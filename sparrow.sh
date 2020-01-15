#ubuntu 18.04.1 LTS
mkdir sparrow
cd sparrow
git clone git://github.com/ropas/sparrow.git

#OCaml OPAM
sudo add-apt-repository ppa:avsm/ppa
sudo apt update
sudo apt install ocaml opam
sudo apt install make m4

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
