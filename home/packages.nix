{ pkgs, ... }:

{

  home.packages = with pkgs; [
    dolphin
    fastfetch
    kitty
    neovim
  ];

}

