{ pkgs ?
  import (fetchTarball "https://github.com/NixOS/nixpkgs/tarball/e740b88c00489273023bd2227ede0056aff42d93") {}
}:

with pkgs;

let inherit (ocamlPackages) buildDunePackage lablgtk3-sourceview3
; in

buildDunePackage {
pname = "example3";
version = "0.0";
src = ./.;

buildInputs = [ lablgtk3-sourceview3 ]
++ stdenv.lib.optional stdenv.isDarwin darwin.apple_sdk.frameworks.Cocoa;

}
