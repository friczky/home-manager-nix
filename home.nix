{ config, pkgs, lib, ... }:

{
  imports = [
    ./package.nix
  ];

  targets.genericLinux.enable=true;
  
  home = {
    username = "friczky";
    stateVersion = "22.11"; #do not touch
    homeDirectory = "/home/friczky";
    enableNixpkgsReleaseCheck = true;
  
    # file = {
    #   ".config/gromit-mpx.ini".source                       = ./configs/gromit-mpx.ini;
    #   ".config/flameshot".source                            = ./configs/flameshot;
    #   ".config/fish".source                                 = ./configs/fish;
    #   ".config/xplr".source                                 = ./configs/xplr;
    #   ".config/mpv/scripts".source                          = ./configs/mpv/scripts;
    #   ".config/mpv/script-opts/youtube-quality.conf".source = ./configs/mpv/youtube-quality.conf;
    #   ".config/gtk-3.0".source                              = ./configs/gtk-3.0;
    #   ".config/htop".source                                 = ./configs/htop;
    #   ".icons".source                                       = ./configs/icons;
    #   ".xinitrc".source                                     = ./configs/xinitrc;
    #   ".Xresources".source                                  = ./configs/Xresources;
    # };
  };
  
}
