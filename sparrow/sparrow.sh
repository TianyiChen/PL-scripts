#ubuntu 18.04.1 LTS
git clone git://github.com/ropas/sparrow.git

#OCaml OPAM
sudo add-apt-repository ppa:avsm/ppa
sudo apt update
sudo apt install ocaml opam
sudo apt install make m4

#Needed sometimes
opam update

#the following may not be necessary if the build script somewhat works

#Batteries
opam install batteries

#cli
opam install cil

#Ocamlgraph
opam install ocamlgraph

#Apron
sudo apt install libgmp-dev libmpfr-dev
opam install apron

#Yojson lymp
opam install yojson lymp

#ppx_compare ppx_deriving
opam install ppx_compare ppx_deriving
