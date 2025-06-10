{ config, pkgs, ... }:

{

# Allow unfree packages
nixpkgs.config.allowUnfree = true;

# Enable AppImage and (some) Linux binaries support
programs = {

appimage = {
enable = true;
binfmt = true;
};

nix-ld.enable = true;
};

# Enable flatpaks
services.flatpak.enable = true;


# Make GTK apps respect system preferences
 xdg.portal = {
 enable = true;
 extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
 config.common.default = "gtk";
};


}
