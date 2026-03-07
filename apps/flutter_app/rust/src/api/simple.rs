#[flutter_rust_bridge::frb(sync)]
pub fn greet(name: String) -> String {
    shared_core::api::simple::greet(name)
}

// Async — Dart gets Future<String>, doesn't block UI
#[flutter_rust_bridge::frb]
pub async fn async_wait(seconds: u32) -> String {
    shared_core::api::simple::async_wait(seconds).await
}

// Blocking — FRB runs on background thread, Dart gets Future<String>
#[flutter_rust_bridge::frb]
pub fn blocking_wait(seconds: u32) -> String {
    shared_core::api::simple::blocking_wait(seconds)
}

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    flutter_rust_bridge::setup_default_user_utils();
}
