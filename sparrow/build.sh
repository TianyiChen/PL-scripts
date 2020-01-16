#!/bin/sh
set -e
NCPU="$(getconf _NPROCESSORS_ONLN 2>/dev/null || echo 1)"
OCAML_VERSION="4.06.1+flambda"
SPARROW_OPAM_SWITCH=sparrow-"$OCAML_VERSION"
opam init --compiler=$OCAML_VERSION -j $NCPU --no-setup --yes
opam switch create $OCAML_VERSION
opam switch -j $NCPU set $OCAML_VERSION
eval $(SHELL=bash opam config env --switch=$OCAML_VERSION)
opam install depext
opam pin add cil https://github.com/KihongHeo/cil.git -n --yes
opam pin add sparrow . -n --yes
opam depext apron
opam install -j $NCPU sparrow --yes --deps-only
opam pin remove sparrow
./configure --enable-tests
make
