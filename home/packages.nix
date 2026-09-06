{ pkgs, ... }:

{

  home.packages = with pkgs; [
    kdePackages.dolphin
    fastfetch
    kitty
    neovim
  ];

}

