
set packages=vcpkg\installed\%TRIPLET%
set outarchive=simutrans-libs-v%version%-%TRIPLET%.zip

pushd %packages%
  echo "Packaging %outarchive% ..."
  7z a -tzip -mx9 -mtc=off "%outarchive%" "*"
popd
