{ config, pkgs, ... }:

{

# Enable CUPS to print documents.
  services.printing.enable = true;

# Display the system partitions
  services.gvfs.enable = true;

# Enable Nix command
 nix.settings.experimental-features = [ "nix-command" ];


# Enable Local bin support
environment.localBinInPath = true;

# Enable flatpaks
services.flatpak.enable = true;


# Make GTK apps respect system preferences
 xdg.portal = {
 enable = true;
 extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
 config.common.default = "gtk";
};


}
