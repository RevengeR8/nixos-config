{ config, lib, pkgs, ... }:

{
  
  boot.loader = {
    timeout = 30;

    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };

    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
      useOSProber = false;
      configurationLimit = 5;
      extraEntries = ''
        menuentry "Windows" {
          search --fs-uuid --set=root 428D-38BB
          chainloader /EFI/Microsoft/Boot/bootmgfw.efi
        }

        menuentry "BIOS" {
	  fwsetup
	}
      '';
    };
  };

}

