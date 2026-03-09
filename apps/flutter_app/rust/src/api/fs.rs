use crate::api::types::FileEntry;
#[flutter_rust_bridge::frb(sync)]
pub fn list_directory(dir_path: String) -> Result<Vec<FileEntry>, String> {
    shared_core::api::fs::list_directory(dir_path)
        .map(|entries| entries.into_iter().map(|e| e.into()).collect())
}
// 2. Read file as string wrapper
#[flutter_rust_bridge::frb(sync)]
pub fn read_file_string(path: String) -> Result<String, String> {
    shared_core::api::fs::read_file_string(path)
}
// 3. Read file as bytes wrapper
#[flutter_rust_bridge::frb(sync)]
pub fn read_file_bytes(path: String) -> Result<Vec<u8>, String> {
    shared_core::api::fs::read_file_bytes(path)
}

impl From<shared_core::api::types::FileEntry> for FileEntry {
    fn from(f: shared_core::api::types::FileEntry) -> Self {
        Self {
            path: f.path,
            is_dir: f.is_dir,
            size_bytes: f.size_bytes,
            modified_ms: f.modified_ms,
        }
    }
}
