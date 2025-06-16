{ config, pkgs, ... }:

{
  imports =
    [ # Import all modules related to terminal.
    ./git.nix
    ./nix-alien.nix
    ];

}
