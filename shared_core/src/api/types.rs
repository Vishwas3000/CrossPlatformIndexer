pub struct FileInfo {
    pub name: String,
    pub size_bytes: u64,
    pub tags: Vec<String>,
}

pub enum IndexStatus {
    Pending,
    Processing { progress: f32},
    Complete { chunk_count: u32},
    Failed { error: String}
}


#[cfg_attr(feature = "flutter", flutter_rust_bridge::frb(sync))]
pub fn get_mock_file_info() -> FileInfo {
    FileInfo {
        name: "example.txt".to_string(),
        size_bytes: 1024,
        tags: vec!["test".to_string(), "example".to_string()],
    }
}

#[cfg_attr(feature = "flutter", flutter_rust_bridge::frb(sync))]

pub fn get_mock_status() -> IndexStatus {
    IndexStatus::Processing { progress: 0.5 }
}

#[cfg_attr(feature = "flutter", flutter_rust_bridge::frb(sync))]
pub fn process_file_info(info: FileInfo) -> String {
    format!("Processed file: {}, size: {} bytes, tags: {:?}", info.name, info.size_bytes, info.tags)
}
