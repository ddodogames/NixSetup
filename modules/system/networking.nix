{ config, pkgs, ... }:

# Networking part
{

networking = {
hostName = "mylaptop";
networkmanager.enable = true;
wireless.enable = true;
};

}
