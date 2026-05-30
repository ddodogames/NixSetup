{ config, pkgs, ... }:

# Networking part
{

  networking = {
    hostName = "mynix";
    networkmanager.enable = true;
  };

}
