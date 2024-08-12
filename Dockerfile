FROM scratch
COPY target/wasm32-wasi/release/hello-wasm.wasm /hello.wasm
ENTRYPOINT [ "/hello.wasm" ]
