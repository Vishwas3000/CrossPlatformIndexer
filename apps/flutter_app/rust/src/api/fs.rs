use crate::api::types::FileEntry;

pub fn list_directory(dir_path: String) -> Result<Vec<FileEntry>, String> {
    shared_core::api::fs::list_directory(dir_path);
}
