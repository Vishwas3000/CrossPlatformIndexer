use std::thread;
use std::time::Duration as StdDuration;
use tokio::time::{sleep, Duration as TokioDuration};

pub fn greet(name: String) -> String {
    format!("Hello from Rust, {}!", name)
}

// Async version — uses tokio, Dart gets Future<String>
pub async fn async_wait(seconds: u32) -> String {
    sleep(TokioDuration::from_secs(seconds as u64)).await;
    format!("Async done after {} seconds!", seconds)
}

// Blocking version — uses std::thread, FRB runs on background thread
pub fn blocking_wait(seconds: u32) -> String {
    thread::sleep(StdDuration::from_secs(seconds as u64));
    format!("Blocking done after {} seconds!", seconds)
}
