{ pkgs, ... }:

{

  home.packages = with pkgs; [
    fastfetch
    kitty
    neovim
  ];

}

