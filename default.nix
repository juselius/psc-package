with (import <nixpkgs> {});
let
  psc-package = {
    mkDerivation, aeson, aeson-pretty, async, base, bytestring
    , containers, foldl, optparse-applicative, process, stdenv
    , system-filepath, text, turtle
  }:
  mkDerivation {
    pname = "psc-package";
    version = "0.2.5";
    src = ./.;
    isLibrary = false;
    isExecutable = true;
    executableHaskellDepends = [
      aeson aeson-pretty async base bytestring containers foldl
      optparse-applicative process system-filepath text turtle
    ];
    homepage = "https://github.com/purescript/psc-package";
    description = "An experimental package manager for PureScript";
    license = stdenv.lib.licenses.bsd3;
  };
in
  haskellPackages.callPackage psc-package {}
