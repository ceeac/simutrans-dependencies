setlocal
pushd vcpkg
  set libraries=zlib:%TRIPLET% bzip2:%TRIPLET% zstd:%TRIPLET% libpng:%TRIPLET% freetype:%TRIPLET% glew:%TRIPLET% sdl1:%TRIPLET% sdl2:%TRIPLET% sdl2-mixer:%TRIPLET% miniupnpc:%TRIPLET% pthreads:%TRIPLET%
  .\vcpkg install %libraries%
  .\vcpkg export %libraries% --zip --nuget
popd
