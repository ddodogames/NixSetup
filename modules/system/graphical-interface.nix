{ config, pkgs, ... }:

{

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the Xfce Desktop Environment + lightdm.
  services.xserver.desktopManager.xfce = {
  enable = true;
  enableWaylandSession = false;
  };

  programs.xfconf.enable = true;

  services.xserver.displayManager.lightdm = {
  enable = true;
  background = ../../images/lightdm/nix-wallpaper-nineish.png;
  greeters.gtk = {
  enable = true;
  theme.name = "Adwaita-dark";
  clock-format = "%A, %I:%M %p";
  };
 };


  # Enable Thunar with some plugins.
 programs.thunar = {
 enable = true;
 plugins = with pkgs; [
 thunar-archive-plugin
 thunar-volman
 thunar-media-tags-plugin
];
};


}
