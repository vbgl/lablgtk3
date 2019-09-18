with import <nixpkgs> {};

let inherit (ocamlPackages) buildDunePackage lablgtk3-sourceview3
; in

buildDunePackage {
pname = "example3";
version = "0.0";
src = ./.;

buildInputs = [ lablgtk3-sourceview3 ];

}
