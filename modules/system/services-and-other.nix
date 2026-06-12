{ config, pkgs, ... }:

{

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Display the system partitions
  services.gvfs.enable = true;

  # Enable Nix command
  nix.settings.experimental-features = [ "nix-command" ];

  # Enable flatpaks
  services.flatpak.enable = true;

  # Install Blueman to manage bluetooth via GUI
  services.blueman.enable = true;

  # Enable Tumbler for thumbnails
  services.tumbler.enable = true;

  # Make GTK apps respect system preferences
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
    config.common.default = "gtk";
  };

}
