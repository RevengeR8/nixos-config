{ coonfig, pkgs, ... }:

{

  home.username = "nik";
  home.homeDirectory = "/home/nik";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  imports = [
    ./home/fastfetch.nix
    ./home/git.nix
    ./home/kitty.nix
    ./home/packages.nix
  ];

}

