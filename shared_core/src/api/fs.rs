use crate::api::types::FileEntry;
use std::fs::{self, metadata};
use std::time::UNIX_EPOCH;

pub fn list_directory(dir_path: String) -> Result<Vec<FileEntry>, String> {
    let mut entries = Vec::new();
    let paths = fs::read_dir(dir_path).map_err(|e| e.to_string())?;

    for path in paths {
        if let Ok(entry) = path {
            if let Ok(metadata) = entry.metadata() {
                let modified_ms = metadata
                    .modified()
                    .unwrap_or(UNIX_EPOCH)
                    .duration_since(UNIX_EPOCH)
                    .unwrap()
                    .as_millis() as u64;

                entries.push(FileEntry {
                    path: entry.path().to_string_lossy().to_string(),
                    is_dir: metadata.is_dir(),
                    size_bytes: metadata.len(),
                    modified_ms,
                });
            }
        }
    }
    Ok(entries)
}

pub fn read_file_string(path: String) -> Result<String, String> {
    fs::read_to_string(path).map_err(|e| e.to_string())
}

pub fn read_file_bytes(path: String) -> Result<Vec<u8>, String> {
    fs::read(path).map_err(|e| e.to_string())
}
