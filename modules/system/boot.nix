{ config, pkgs, ... }:

{

  # Use 6.18 LTS kernel.
  boot.kernelPackages = pkgs.linuxKernel.packages.linux_6_18;

  # Bootloader.
  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    configurationName = "NixOS 26.05";
    configurationLimit = 15;
    splashImage = null;
    useOSProber = false;
    extraEntries = "
menuentry 'System shutdown' {
	echo 'System shutting down...'
	halt
}

menuentry 'System restart' {
	echo 'System rebooting...'
	reboot
}
";
  };

  # Plymouth
  boot.plymouth = {
    enable = true;
    theme = "spinner";
    logo = ../../images/boot/nixos-white.png;
  };

  # Kernel params and ensure Plymouth loads correctly
  boot.kernelParams = [
    "quiet"
    "splash"
  ];
  boot.initrd.kernelModules = [ "i915" ];
  boot.initrd.systemd.enable = true;

}
