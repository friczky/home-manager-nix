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
    enableNixpkgsReleaseCheck = false;

  };
  
}
