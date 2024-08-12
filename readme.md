# 编译与运行

rustup target add wasm32-wasi


cargo build --target wasm32-wasi --release
前提已安装 wasm32-wasi

## 尝试运行
wasmedge target/wasm32-wasi/release/hello-wasm.wasm

### docker 运行
docker build --platform wasi/wasm32 -t wasm .

docker run --rm --runtime=io.containerd.wasmedge.v1 --platform=wasi/wasm32 wasm
