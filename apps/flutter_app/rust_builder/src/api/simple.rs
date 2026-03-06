/// This is the FRB-exposed API surface.
/// It delegates calls to the pure Rust `shared_core` library.
#[flutter_rust_bridge::frb(sync)]
pub fn greet(name: String) -> String {
    shared_core::api::simple::greet(name)
}
