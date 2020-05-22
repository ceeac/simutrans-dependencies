setlocal
pushd vcpkg
  set libraries=zlib:%TRIPLET% bzip2:%TRIPLET% zstd:%TRIPLET% libpng:%TRIPLET% freetype:%TRIPLET% sdl2:%TRIPLET% miniupnpc:%TRIPLET%
  .\vcpkg install %libraries%
  .\vcpkg export %libraries% --zip --nuget
popd
