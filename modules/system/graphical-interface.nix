{ config, pkgs, ... }:

{

# Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the XFCE Desktop Environment.
  services.xserver.displayManager.lightdm = {
  enable = true;
  background = ../../backgrounds/nix-wallpaper-nineish.png;
  greeters.gtk = {
  theme.name = "Adwaita-dark";
  clock-format = "%A, %I:%M %p";
  };
 };
  services.xserver.desktopManager.xfce.enable = true;

  # Enable some thunar plugins
 programs.thunar.plugins = with pkgs.xfce; [
 thunar-archive-plugin
 thunar-volman
 thunar-media-tags-plugin
];

  # Display the system partitions
  services.gvfs.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };


}
