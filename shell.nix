{ nixpkgs ? import <nixpkgs> { }}:

let
  pinnedPkgs = nixpkgs.fetchFromGitHub {
    owner  = "NixOS";
    repo   = "nixpkgs";
    rev    = "4d2b37a84fad1091b9de401eb450aae66f1a741e";
    sha256 = "11w3wn2yjhaa5pv20gbfbirvjq6i3m7pqrq2msf0g7cv44vijwgw";
  };
  pkgs = import pinnedPkgs {};
in

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Tooling
    ocamlPackages.ocaml
    ocamlPackages.dune_3
    ocamlPackages.findlib

    # OCaml libraries
    ocamlPackages.yojson
    ocamlPackages.alcotest
  ];
}
