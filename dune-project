(lang dune 3.6)

(name hello)

(source
 (github eudoxia0/ocaml-nix-starter))

(authors "Fernando Borretti")

(maintainers "Fernando Borretti")

(license Apache-2.0)

(documentation https://github.com/eudoxia0/ocaml-nix-starter)

(package
 (name hello)
 (synopsis "An OCaml project template")
 (description "An OCaml project template")
 (depends
  (ocaml (>= 4.14.1))
  (dune (>= 3.6.1))
  (alcotest :with-test)
  (odoc :with-doc)))
