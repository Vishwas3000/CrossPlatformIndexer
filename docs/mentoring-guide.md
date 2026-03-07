# Mentoring Guide — What To Do Next

A living document tracking your progress and next actions. Updated as you complete each milestone.

---

## Where You Are Now (March 7, 2026)

- ✅ Architecture understood (2-layer model, shared_core as SDK)
- ✅ Build system working (greet function works macOS end-to-end)
- ✅ Understand the connection chain: shared_core → rust/ → FRB codegen → Dart → Flutter
- ✅ Docs written: architecture.md, build-guide.md
- 🔜 **Starting Phase 0: Foundation POCs**

---

## Your Next Step: POC 1 — FFI Complex Types

**Why this is first**: Everything in this project depends on Rust ↔ Dart data exchange. Before building any real feature, you need to prove that structs, enums, vectors, errors, and async calls cross the FFI boundary correctly. If this doesn't work, nothing else matters.

### What to do (in order):

#### 1. Define a realistic data model in `shared_core`

Create `shared_core/src/api/types.rs` (and register it in `mod.rs`). Define these types:

```rust
pub struct FileInfo {
    pub name: String,
    pub size_bytes: u64,
    pub tags: Vec<String>,
}

pub enum IndexStatus {
    Pending,
    Processing { progress: f32 },
    Complete { chunk_count: u32 },
    Failed { error: String },
}

pub fn get_mock_file_info() -> FileInfo { ... }
pub fn get_mock_status() -> IndexStatus { ... }
pub fn process_file_info(info: FileInfo) -> String { ... }  // Proves Dart→Rust struct works
```

**Goal**: Test that you can pass these types BOTH directions (Rust→Dart and Dart→Rust).

#### 2. Wrap them in `rust/src/api/`

Create corresponding wrappers with `#[frb]` annotations. Every public type used in a function signature will be auto-generated in Dart by FRB.

#### 3. Run FRB codegen

```bash
cd apps/flutter_app
flutter_rust_bridge_codegen generate
```

Check the generated Dart in `lib/src/rust/api/` — you'll see Dart classes matching your Rust structs/enums.

#### 4. Build a simple Flutter test screen

Create a screen with buttons that:
- Calls `get_mock_file_info()` and displays the struct fields
- Calls `get_mock_status()` and displays the enum variant
- Sends a `FileInfo` from Dart to Rust via `process_file_info()`

#### 5. Test on macOS first, then Android

Run on macOS (fastest iteration cycle). Once it works, test on Android emulator or device to confirm cross-platform.

### How you know POC 1 is done:
- [ ] Rust struct with String, u64, Vec<String> displays correctly in Flutter
- [ ] Rust enum with variants (unit + with data) renders correctly
- [ ] Dart-created struct sent to Rust and processed
- [ ] Works on macOS
- [ ] Works on Android

---

## After POC 1: The Sequence

| Order | POC | What You'll Learn | Estimated Time |
|-------|-----|-------------------|---------------|
| ✅ | POC 0 (greet) | Basic FFI works | Done |
| → | **POC 1: Complex Types** | Structs, enums, Result, Vec cross FFI | 1–2 days |
| | POC 2: Async + Streams | Long tasks don't block UI, progress reporting | 1–2 days |
| | POC 5: BLAKE3 Hashing | First real Rust crate dependency, file I/O | 1 day |
| | POC 10: Conditional Compilation | #[cfg] works for cross-compile | 1 day |
| | POC 3: Filesystem Access | Read files on each platform | 1–2 days |
| | POC 8: PDF Parsing | Pure-Rust PDF extraction | 2 days |
| | POC 6: Vector Database | Embedded HNSW search | 2–3 days |
| | POC 7: Embeddings | On-device ONNX inference | 2–3 days |
| | POC 4: File Watching | notify crate, real-time events | 1–2 days |
| | POC 9: Background Execution | Android WorkManager, iOS BGTask | 2–3 days |

**Why this order**:
- POC 1, 2 are **foundational** — they prove the bridge works for real data
- POC 5, 10 are **quick wins** — simple, build confidence, unlock cross-compilation
- POC 3, 8 are **core to RAG** — you need to read and parse files  
- POC 6, 7 are **the hard parts** — embedded ML and vector search
- POC 4, 9 are **polish** — file watching and background tasks need real devices

---

## Daily Workflow Reminder

```
1. Write logic in shared_core/src/api/
2. cargo test -p shared_core              ← Test in isolation
3. Add #[frb] wrapper in rust/src/api/
4. cd apps/flutter_app
5. flutter_rust_bridge_codegen generate   ← Regenerate Dart bindings
6. flutter run -d macos                   ← Test in Flutter
```

---

## Tips From Your Mentor

1. **Test shared_core in isolation first**. Run `cargo test -p shared_core` before touching Flutter. If the Rust logic is wrong, debugging through FFI is painful.

2. **Keep wrappers thin**. The `rust/src/api/*.rs` files should be 1-line delegations. If you're writing logic there, it belongs in `shared_core`.

3. **Commit after each working POC**. Each POC is a clean milestone. Tag them: `git tag poc-1-ffi-types`.

4. **One new concept per POC**. Don't try to add async + complex types + file I/O in one step. Isolate variables.

5. **Read FRB docs for gotchas**. Some Rust types don't cross FFI cleanly (e.g., `HashMap` needs special handling, lifetimes don't exist in Dart). Check https://cjycode.com/flutter_rust_bridge/ when stuck.

6. **Android cross-compile setup**. Before POC 1 on Android, you'll need to install Android NDK targets:
   ```bash
   rustup target add aarch64-linux-android armv7-linux-androideabi x86_64-linux-android
   ```

7. **When something breaks**: clean everything and rebuild:
   ```bash
   cargo clean && cd apps/flutter_app && flutter clean && flutter pub get && flutter_rust_bridge_codegen generate
   ```
