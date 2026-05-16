{ config, pkgs, ... }:

{

# Enable AppImage and (some) Linux binaries support
programs = {

appimage = {
enable = true;
binfmt = true;
};

nix-ld.enable = true;
};


}
