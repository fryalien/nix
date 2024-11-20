{ config, pkgs, ... }:

{

  #imports =
  #  [
      #./app/browser/librewolf.nix
      #./app/browser/chromium.nix
      #./app/browser/brave.nix
  #  ];

  # Home Manager data.
  home.username = "y";
  home.homeDirectory = "/home/y";

  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
   ".config/fish".source = ./system/fish;
   ".local/share/konsole".source = ./apps/konsole;
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  home.sessionVariables = {
    EDITOR = "micro";
  };

  # home.file."~/.config/fish/config.fish".source = ./system/config.fish;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

}