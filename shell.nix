{pkgs ? import <nixpkgs> {}}: let
  inherit (pkgs) mkShell zola;
in
  mkShell {
    packages = [
      zola
    ];
  }
