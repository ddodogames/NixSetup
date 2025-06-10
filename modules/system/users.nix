{ config, pkgs, ... }:

{

# Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dodo = {
    isNormalUser = true;
    description = "dodo";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # Enable automatic login for the user.
  services.displayManager.autoLogin = {
  enable = true;
  user = "dodo";
  };

}
