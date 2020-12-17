{ nixpkgs ? builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/66acfa3d16eb599f5aa85bda153a24742f683383.tar.gz"
, overlays ? [], ... }@args: import nixpkgs {
  overlays = [ (import ./overlay.nix) ] ++ overlays;
} // args
