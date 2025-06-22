{ config, pkgs, ... }:

{
# Bootloader.
  boot.loader.grub = {
  enable = true;
  device = "/dev/sda";
  configurationLimit = 10;
  splashImage = null;
  useOSProber = true;
  };

}
