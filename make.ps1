param (
    [string]$compiler = "Clang"
)

clear
echo "clear"

echo "`nRemove-Item -Path ./build -Recurse -Force"
Remove-Item -Path ./build -Recurse -Force

if ($compiler -eq "Clang") {
    echo "`nsource: cmake -S . -B build -G Ninja"
    cmake -S . -B build -G Ninja

    echo "`nbuild: cmake --build build -j"
    cmake --build build -j

    echo "`nrun: ./build/cppprojecttemplate/cppprojecttemplate.exe"
    ./build/cppprojecttemplate/cppprojecttemplate.exe
}
elseif ($compiler -eq "MSVC") {
    echo "`nsource: cmake -S . -B build -D CMAKE_BUILD_TYPE=Sanitizer"
    cmake -S . -B build -D CMAKE_BUILD_TYPE=Sanitizer

    echo "`nbuild: cmake --build build -j"
    cmake --build build -j

    echo "`nrun: ./build/cppprojecttemplate/Debug/cppprojecttemplate.exe"
    ./build/cppprojecttemplate/Debug/cppprojecttemplate.exe
}
else {
    echo "Unknown compiler specified. Please use Clang or MSVC."
}
