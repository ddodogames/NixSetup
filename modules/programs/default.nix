{ config, pkgs, ... }:

{
  imports = [
    # Import all modules related to programs.
    ./firefox.nix
    ./appimages.nix
  ];

}
