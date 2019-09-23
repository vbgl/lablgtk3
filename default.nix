{ pkgs ?
  import (fetchTarball "https://github.com/NixOS/nixpkgs/tarball/65a1b179f3786a8ed00d8985bb5a3dccc1d73aa8") {}
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
