# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # get hardware config and modules connected.
      ./hardware-configuration.nix
      ./modules/system/default.nix
    ];


  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Enable Nix command
 nix.settings.experimental-features = [ "nix-command" ];

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  wget
  xfce.xfce4-panel-profiles
  xfce.xfce4-whiskermenu-plugin
  xfce.xfce4-clipman-plugin
  xfce.xfce4-notes-plugin
  xfce.xfce4-weather-plugin
  google-chrome
  git
  gtk-engine-murrine
  sassc
  file-roller
  gnome-disk-utility
  ];
  

# Enable Local bin support
environment.localBinInPath = true;


  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

}



