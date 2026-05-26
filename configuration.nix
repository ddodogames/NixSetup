# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # get hardware config and modules connected.
      ./hardware-configuration.nix
      ./modules/system/default.nix
      ./modules/programs/default.nix
      ./modules/terminal/default.nix
    ];


  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  wget
  wineWow64Packages.stableFull
  xfce4-panel-profiles
  xfce4-whiskermenu-plugin
  xfce4-clipman-plugin
  xfce4-xkb-plugin
  menulibre
  sassc
  xarchiver
  fastfetch
  mint-y-icons
  gnome-disk-utility
  bleachbit
  distrobox
  ];
  
  fonts.packages = with pkgs; [
  noto-fonts
  noto-fonts-cjk-sans
  noto-fonts-color-emoji
  open-sans
  liberation_ttf
];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?

}



