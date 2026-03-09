import 'package:flutter/material.dart';
import 'package:flutter_app/src/rust/api/simple.dart';
import 'package:flutter_app/src/rust/frb_generated.dart';
import 'package:flutter_app/src/rust/api/types.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  await RustLib.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POC 1 — FFI Complex Types',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
      home: const TestScreen(),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  String greetResult = '';
  String fileInfoResult = '';
  String statusResult = '';
  String processResult = '';
  String asyncResult = '';
  String blockingResult = '';

  bool isRustWorking = false;
  String fsResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POC 1 & 2 Tests'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          if (isRustWorking)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(child: SizedBox(width: 24, height: 24, child: CircularProgressIndicator(strokeWidth: 2))),
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Test 0: Basic greet
            _buildTestCard(
              title: 'Test 0: Basic Greet',
              result: greetResult,
              onPressed: () {
                setState(() {
                  greetResult = greet(name: "Flutter Dev");
                });
              },
            ),

            // Test 1: Get struct from Rust
            _buildTestCard(
              title: 'Test 1: Get FileInfo (Struct)',
              result: fileInfoResult,
              onPressed: () {
                final info = getMockFileInfo();
                setState(() {
                  fileInfoResult =
                      'Name: ${info.name}\n'
                      'Size: ${info.sizeBytes} bytes\n'
                      'Tags: ${info.tags.join(", ")}';
                });
              },
            ),

            // Test 2: Get enum from Rust
            _buildTestCard(
              title: 'Test 2: Get IndexStatus (Enum)',
              result: statusResult,
              onPressed: () {
                final status = getMockStatus();
                setState(() {
                  statusResult = switch (status) {
                    IndexStatus_Pending() => '⏳ Pending',
                    IndexStatus_Processing(:final progress) => '🔄 Processing: ${(progress * 100).toStringAsFixed(0)}%',
                    IndexStatus_Complete(:final chunkCount) => '✅ Complete: $chunkCount chunks',
                    IndexStatus_Failed(:final error) => '❌ Failed: $error',
                  };
                });
              },
            ),

            // Test 3: Send struct from Dart → Rust
            _buildTestCard(
              title: 'Test 3: Send FileInfo to Rust',
              result: processResult,
              onPressed: () {
                final dartInfo = FileInfo(name: "created_in_dart.pdf", sizeBytes: BigInt.from(4096), tags: ["dart", "created", "poc1"]);
                setState(() {
                  processResult = processFileInfo(info: dartInfo);
                });
              },
            ),

            // Test 4: Async Wait (tokio)
            _buildTestCard(
              title: 'Test 4: Async Wait (Tokio)',
              result: asyncResult,
              onPressed: () async {
                setState(() {
                  isRustWorking = true;
                  asyncResult = 'Waiting 3 seconds... (Watch the spinner above ☝️)';
                });
                // THIS IS ASYNC - UI stays responsive!
                final res = await asyncWait(seconds: 3);
                setState(() {
                  isRustWorking = false;
                  asyncResult = res;
                });
              },
            ),

            // Test 5: Blocking Wait (std::thread)
            _buildTestCard(
              title: 'Test 5: Blocking Wait (std::thread)',
              result: blockingResult,
              onPressed: () async {
                setState(() {
                  isRustWorking = true;
                  blockingResult = 'Waiting 3 seconds... (Watch the spinner above ☝️)';
                });
                // ALSO ASYNC FROM DART'S PERSPECTIVE - FRB runs it on a background thread
                final res = await blockingWait(seconds: 3);
                setState(() {
                  isRustWorking = false;
                  blockingResult = res;
                });
              },
            ),

            // Test 6: get file path
            _buildTestCard(
              title: "Test 6: Filesystem (List Documents)",
              result: fsResult,
              onPressed: () async {
                setState(() {
                  isRustWorking = true;
                  fsResult = 'Getting documents directory...';
                });

                try {
                  final dir = await getApplicationDocumentsDirectory();

                  setState(() {
                    
                  });
                } catch {
                  
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTestCard({required String title, required String result, required VoidCallback onPressed}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            ElevatedButton(onPressed: onPressed, child: const Text('Run Test')),
            if (result.isNotEmpty) ...[
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.green.shade200),
                ),
                child: Text(result, style: const TextStyle(fontFamily: 'monospace', fontSize: 14)),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
