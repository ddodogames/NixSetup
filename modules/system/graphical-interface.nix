{ config, pkgs, ... }:

{

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the Xfce Desktop Environment.
  services.xserver.displayManager.lightdm = {
  enable = true;
  background = ../../images/lightdm/nix-wallpaper-nineish.png;
  greeters.gtk = {
  enable = true;
  theme.name = "Adwaita-dark";
  clock-format = "%A, %I:%M %p";
  };
 };

  services.xserver.desktopManager.xfce = {
  enable = true;
  enableWaylandSession = false;
  };

  programs.xfconf.enable = true;

  # Enable Thunar with some plugins.
 programs.thunar = {
 enable = true;
 plugins = with pkgs.xfce; [
 thunar-archive-plugin
 thunar-volman
 thunar-media-tags-plugin
];
};


}
