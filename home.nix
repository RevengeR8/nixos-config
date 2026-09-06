{ coonfig, pkgs, ... }:

{

  home.username = "nik";
  home.homeDirectory = "/home/nik";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [ 
    neovim
    kitty
    fastfetch
  ];

}

