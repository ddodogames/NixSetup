{ config, pkgs, ... }:

{
  imports =
    [ # Import all modules related to system.
      ./firefox.nix
      ./appimages.nix
    ];

}
