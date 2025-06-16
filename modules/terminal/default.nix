{ config, pkgs, ... }:

{
  imports =
    [ # Import all modules related to terminal.
    ./starship.nix
    ./git.nix
    ./nix-alien.nix
    ];

}
