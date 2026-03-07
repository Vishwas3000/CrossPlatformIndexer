// The original content is temporarily commented out to allow generating a self-contained demo - feel free to uncomment later.

// // The original content is temporarily commented out to allow generating a self-contained demo - feel free to uncomment later.
// 
// // // The original content is temporarily commented out to allow generating a self-contained demo - feel free to uncomment later.
// //
// // // // The original content is temporarily commented out to allow generating a self-contained demo - feel free to uncomment later.
// // //
// // // // // The original content is temporarily commented out to allow generating a self-contained demo - feel free to uncomment later.
// // // //
// // // // // import 'package:flutter/material.dart';
// // // // //
// // // // // void main() {
// // // // //   runApp(const MyApp());
// // // // // }
// // // // //
// // // // // class MyApp extends StatelessWidget {
// // // // //   const MyApp({super.key});
// // // // //
// // // // //   // This widget is the root of your application.
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return MaterialApp(
// // // // //       title: 'Flutter Demo',
// // // // //       theme: ThemeData(
// // // // //         // This is the theme of your application.
// // // // //         //
// // // // //         // TRY THIS: Try running your application with "flutter run". You'll see
// // // // //         // the application has a purple toolbar. Then, without quitting the app,
// // // // //         // try changing the seedColor in the colorScheme below to Colors.green
// // // // //         // and then invoke "hot reload" (save your changes or press the "hot
// // // // //         // reload" button in a Flutter-supported IDE, or press "r" if you used
// // // // //         // the command line to start the app).
// // // // //         //
// // // // //         // Notice that the counter didn't reset back to zero; the application
// // // // //         // state is not lost during the reload. To reset the state, use hot
// // // // //         // restart instead.
// // // // //         //
// // // // //         // This works for code too, not just values: Most code changes can be
// // // // //         // tested with just a hot reload.
// // // // //         colorScheme: .fromSeed(seedColor: Colors.deepPurple),
// // // // //       ),
// // // // //       home: const MyHomePage(title: 'Flutter Demo Home Page'),
// // // // //     );
// // // // //   }
// // // // // }
// // // // //
// // // // // class MyHomePage extends StatefulWidget {
// // // // //   const MyHomePage({super.key, required this.title});
// // // // //
// // // // //   // This widget is the home page of your application. It is stateful, meaning
// // // // //   // that it has a State object (defined below) that contains fields that affect
// // // // //   // how it looks.
// // // // //
// // // // //   // This class is the configuration for the state. It holds the values (in this
// // // // //   // case the title) provided by the parent (in this case the App widget) and
// // // // //   // used by the build method of the State. Fields in a Widget subclass are
// // // // //   // always marked "final".
// // // // //
// // // // //   final String title;
// // // // //
// // // // //   @override
// // // // //   State<MyHomePage> createState() => _MyHomePageState();
// // // // // }
// // // // //
// // // // // class _MyHomePageState extends State<MyHomePage> {
// // // // //   int _counter = 0;
// // // // //
// // // // //   void _incrementCounter() {
// // // // //     setState(() {
// // // // //       // This call to setState tells the Flutter framework that something has
// // // // //       // changed in this State, which causes it to rerun the build method below
// // // // //       // so that the display can reflect the updated values. If we changed
// // // // //       // _counter without calling setState(), then the build method would not be
// // // // //       // called again, and so nothing would appear to happen.
// // // // //       _counter++;
// // // // //     });
// // // // //   }
// // // // //
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     // This method is rerun every time setState is called, for instance as done
// // // // //     // by the _incrementCounter method above.
// // // // //     //
// // // // //     // The Flutter framework has been optimized to make rerunning build methods
// // // // //     // fast, so that you can just rebuild anything that needs updating rather
// // // // //     // than having to individually change instances of widgets.
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         // TRY THIS: Try changing the color here to a specific color (to
// // // // //         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
// // // // //         // change color while the other colors stay the same.
// // // // //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// // // // //         // Here we take the value from the MyHomePage object that was created by
// // // // //         // the App.build method, and use it to set our appbar title.
// // // // //         title: Text(widget.title),
// // // // //       ),
// // // // //       body: Center(
// // // // //         // Center is a layout widget. It takes a single child and positions it
// // // // //         // in the middle of the parent.
// // // // //         child: Column(
// // // // //           // Column is also a layout widget. It takes a list of children and
// // // // //           // arranges them vertically. By default, it sizes itself to fit its
// // // // //           // children horizontally, and tries to be as tall as its parent.
// // // // //           //
// // // // //           // Column has various properties to control how it sizes itself and
// // // // //           // how it positions its children. Here we use mainAxisAlignment to
// // // // //           // center the children vertically; the main axis here is the vertical
// // // // //           // axis because Columns are vertical (the cross axis would be
// // // // //           // horizontal).
// // // // //           //
// // // // //           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
// // // // //           // action in the IDE, or press "p" in the console), to see the
// // // // //           // wireframe for each widget.
// // // // //           mainAxisAlignment: .center,
// // // // //           children: [
// // // // //             const Text('You have pushed the button this many times:'),
// // // // //             Text(
// // // // //               '$_counter',
// // // // //               style: Theme.of(context).textTheme.headlineMedium,
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //       floatingActionButton: FloatingActionButton(
// // // // //         onPressed: _incrementCounter,
// // // // //         tooltip: 'Increment',
// // // // //         child: const Icon(Icons.add),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // //
// // // //
// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter_app/src/rust/api/simple.dart';
// // // // import 'package:flutter_app/src/rust/frb_generated.dart';
// // // //
// // // // Future<void> main() async {
// // // //   await RustLib.init();
// // // //   runApp(const MyApp());
// // // // }
// // // //
// // // // class MyApp extends StatelessWidget {
// // // //   const MyApp({super.key});
// // // //
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       home: Scaffold(
// // // //         appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
// // // //         body: Center(
// // // //           child: Text(
// // // //               'Action: Call Rust `greet("Tom")`\nResult: `${greet(name: "Tom")}`'),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // //
// // //
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_app/src/rust/api/simple.dart';
// // // import 'package:flutter_app/src/rust/frb_generated.dart';
// // //
// // // Future<void> main() async {
// // //   await RustLib.init();
// // //   runApp(const MyApp());
// // // }
// // //
// // // class MyApp extends StatelessWidget {
// // //   const MyApp({super.key});
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: Scaffold(
// // //         appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
// // //         body: Center(
// // //           child: Text(
// // //               'Action: Call Rust `greet("Tom")`\nResult: `${greet(name: "Tom")}`'),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // //
// //
// // import 'package:flutter/material.dart';
// // import 'package:flutter_app/src/rust/api/simple.dart';
// // import 'package:flutter_app/src/rust/frb_generated.dart';
// //
// // Future<void> main() async {
// //   await RustLib.init();
// //   runApp(const MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
// //         body: Center(
// //           child: Text(
// //               'Action: Call Rust `greet("Tom")`\nResult: `${greet(name: "Tom")}`'),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// 
// import 'package:flutter/material.dart';
// import 'package:flutter_app/src/rust/api/simple.dart';
// import 'package:flutter_app/src/rust/frb_generated.dart';
// 
// Future<void> main() async {
//   await RustLib.init();
//   runApp(const MyApp());
// }
// 
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
// 
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
//         body: Center(
//           child: Text(
//             'Action: Call Rust `greet("Tom")`\nResult: `${greet(name: "Tom")}`',
//           ),
//         ),
//       ),
//     );
//   }
// }
// 

import 'package:flutter/material.dart';
import 'package:flutter_app/src/rust/api/simple.dart';
import 'package:flutter_app/src/rust/frb_generated.dart';
import 'package:flutter_app/src/rust/api/types.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POC 1 — FFI Complex Types'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Test 0: Basic greet (already working)
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
                    IndexStatus_Processing(:final progress) =>
                      '🔄 Processing: ${(progress * 100).toStringAsFixed(0)}%',
                    IndexStatus_Complete(:final chunkCount) =>
                      '✅ Complete: $chunkCount chunks',
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
                final dartInfo = FileInfo(
                  name: "created_in_dart.pdf",
                  sizeBytes: BigInt.from(4096),
                  tags: ["dart", "created", "poc1"],
                );
                setState(() {
                  processResult = processFileInfo(info: dartInfo);
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTestCard({
    required String title,
    required String result,
    required VoidCallback onPressed,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: onPressed,
              child: const Text('Run Test'),
            ),
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
                child: Text(
                  result,
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 14),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
