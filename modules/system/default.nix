{ config, pkgs, ... }:

{
  imports =
    [ # Import all modules related to system.
      ./grub.nix
      ./users.nix
      ./graphic-interface.nix
      ./networking.nix
      ./locale.nix
      ./pipewire.nix
      ./programs.nix
    ];

}
