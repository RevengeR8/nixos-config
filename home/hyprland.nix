{ ... }:

{

  wayland.windowManager.hyprland = {
    enable = true;

    systemd.enable = false;

    settings = {
      "$mod" = "SUPER";
    };
  };

}

