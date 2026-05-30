{ config, pkgs, ... }:

{
  imports = [
    # Import all modules related to system.
    ./boot.nix
    ./users.nix
    ./graphical-interface.nix
    ./networking.nix
    ./bluetooth.nix
    ./locale.nix
    ./pipewire.nix
    ./services-and-other.nix
  ];

}
