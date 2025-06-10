{ config, pkgs, ... }:

{
# Bootloader.
  boot.loader.grub = {
  enable = true;
  device = "/dev/sda";
  configurationLimit = 6;
  useOSProber = true;
  };

}
