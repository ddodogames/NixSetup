{ config, pkgs, ... }:

{

  # Enable AppImages
  programs = {

    appimage = {
      enable = true;
      binfmt = true;
    };

  };

}
