{ config, pkgs, lib, ... }:

{
  programs.git = {
    enable = true;
    userName = "friczky";
    userEmail = "friczky@gmail.com";
  };
}
