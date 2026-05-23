{ config, pkgs, ... }:

{
  imports =
    [ # Import all modules related to terminal.
    ./git.nix
    ./podman.nix
    ./nix-ld.nix
    ];

}
