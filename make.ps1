clear
echo "clear"

echo "`nRemove-Item -Path ./build -Recurse -Force"
Remove-Item -Path ./build -Recurse -Force

echo "`nsource: cmake -S . -B build -G Ninja -D myself=ON"
cmake -S . -B build -G Ninja -D myself=ON

echo "`nbuild: cmake --build build -j"
cmake --build build -j

echo "`nrun: ./build/cppprojecttemplate/cppprojecttemplate.exe"
./build/cppprojecttemplate/cppprojecttemplate.exe
