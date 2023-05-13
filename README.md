# OCaml Nix Starter Project

![Build status badge](https://github.com/eudoxia0/ocaml-nix-starter/actions/workflows/test.yaml/badge.svg)

A minimal OCaml project using [Nix][nix], with dependencies and unit tests.

[nix]: https://nixos.org/

## Usage

```bash
$ nix-shell

> make
> ./hello
Hello, world!
> make test
> make clean
```

## Using This Template

To make your own project from this template:

1. Update `dune-project` to your metadata.
1. Update `lib/dune`, `bin/dune`, and `test/dune`.
1. Add any OCaml dependencies to `shell.nix`, `dune-project`, and the relevant
   `dune` files.

## License

Copyright 2023 [Fernando Borretti](https://borretti.me/)

Released under the [Apache 2.0][license] license.

[license]: https://www.apache.org/licenses/LICENSE-2.0
