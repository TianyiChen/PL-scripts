#cd /tmp
git clone https://github.com/llvm/llvm-project.git --depth=1
cd llvm-project
mkdir build
cd build
export CC=clang-11
rm CMakeCache.txt;export CXX="clang-11 -w -stdlib=libc++ -lc++ -lc++abi  -lstdc++ -L/usr/lib/llvm-11/lib"
cmake -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_BUILD_TYPE=Release -DLLVM_TARGETS_TO_BUILD=X86 -G "Unix Makefiles" ../llvm
make -j24
