// Core logic module - exposed to Flutter via the rust_builder FFI wrapper
//! The core library for the Cross-Platform Indexer.
//!
//! This library contains the "Brain" of the application, handling:
//! - Local file ingestion and chunking
//! - Embedding generation
//! - Local vector database operations
//! - Local LLM orchestration
//!
//! The `api` module contains the endpoints exposed to the UI (Flutter/Native) via `flutter_rust_bridge`.

pub mod api;

/// An example function inside `lib.rs`.
/// You can write inline tests (DocTests) in Rust which serve as examples.
///
/// # Examples
///
/// ```
/// let result = shared_core::add(2, 2);
/// assert_eq!(result, 4);
/// ```
pub fn add(left: usize, right: usize) -> usize {
    left + right
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_add() {
        assert_eq!(add(2, 2), 4);
    }
}
