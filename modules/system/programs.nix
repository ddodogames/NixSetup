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


}
