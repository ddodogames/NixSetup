{ config, pkgs, ... }:

{

services.pipewire = {
    enable = true;
    wireplumber.enable = true;
    alsa.enable = true;
    jack.enable = true;
    pulse.enable = true;
  };

}
