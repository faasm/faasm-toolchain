export WASM_SYSROOT=/usr/local/faasm/llvm-sysroot
export WASM_LIBRARY_PATH=${WASM_SYSROOT}/lib/wasm32-wasi
export WASM_TOOLCHAIN_BIN=/usr/local/faasm/toolchain/bin

export WASM_CC=${WASM_TOOLCHAIN_BIN}/clang
export WASM_CXX=${WASM_TOOLCHAIN_BIN}/clang++
export WASM_CPP=${WASM_TOOLCHAIN_BIN}/clang-cpp
export WASM_AR=${WASM_TOOLCHAIN_BIN}/llvm-ar
export WASM_NM=${WASM_TOOLCHAIN_BIN}/llvm-nm
export WASM_RANLIB=${WASM_TOOLCHAIN_BIN}/llvm-ranlib
export WASM_LD=${WASM_TOOLCHAIN_BIN}/wasm-ld

export WASM_LDFLAGS="-Xlinker --stack-first -Xlinker --no-check-features"
export WASM_FUNC_LDFLAGS="-Xlinker --export=_faasm_zygote -Xlinker --export=__wasm_call_ctors -Xlinker --max-memory=4294901760 -Wl,-z,stack-size=4194304 -Wl,"

export WASM_BUILD=wasm32
export WASM_HOST=wasm32-unknown-wasi
export WASM_HOST_UNKNOWN=wasm32-unknown-unknown

# 23/09/2020 - Remove SIMD
# export WASM_CFLAGS="-O3 --sysroot=${WASM_SYSROOT} -msimd128 -mno-atomics -D__faasm"
export WASM_CFLAGS="-O3 --sysroot=${WASM_SYSROOT} -mno-atomics -D__faasm"
export WASM_CXXFLAGS=${WASM_CFLAGS}

# Flags for shared libraries
export WASM_SHARED_FLAGS="-D__wasi__ -nostdlib -nostlib++ -fPIC --target=wasm32-unknown-emscripten -Xlinker --no-entry -Xlinker --shared -Xlinker --export-all -Xlinker --no-gc-sections"

# Note - order very important here
export WASM_BLAS_LIBS="lapack blas f2c"

