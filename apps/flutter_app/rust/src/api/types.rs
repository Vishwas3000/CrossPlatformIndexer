// DTO types — defined here so FRB can see fields
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

pub struct FileEntry {
    pub path: String,
    pub is_dir: bool,
    pub size_bytes: u64,
    pub modified_ms: u64,
}

// Conversions
impl From<shared_core::api::types::FileInfo> for FileInfo {
    fn from(f: shared_core::api::types::FileInfo) -> Self {
        Self {
            name: f.name,
            size_bytes: f.size_bytes,
            tags: f.tags,
        }
    }
}

impl From<FileInfo> for shared_core::api::types::FileInfo {
    fn from(f: FileInfo) -> Self {
        Self {
            name: f.name,
            size_bytes: f.size_bytes,
            tags: f.tags,
        }
    }
}

impl From<shared_core::api::types::IndexStatus> for IndexStatus {
    fn from(s: shared_core::api::types::IndexStatus) -> Self {
        match s {
            shared_core::api::types::IndexStatus::Pending => Self::Pending,
            shared_core::api::types::IndexStatus::Processing { progress } => {
                Self::Processing { progress }
            }
            shared_core::api::types::IndexStatus::Complete { chunk_count } => {
                Self::Complete { chunk_count }
            }
            shared_core::api::types::IndexStatus::Failed { error } => Self::Failed { error },
        }
    }
}

// Wrapper functions
#[flutter_rust_bridge::frb(sync)]
pub fn get_mock_file_info() -> FileInfo {
    shared_core::api::types::get_mock_file_info().into()
}

#[flutter_rust_bridge::frb(sync)]
pub fn get_mock_status() -> IndexStatus {
    shared_core::api::types::get_mock_status().into()
}

#[flutter_rust_bridge::frb(sync)]
pub fn process_file_info(info: FileInfo) -> String {
    shared_core::api::types::process_file_info(info.into())
}
