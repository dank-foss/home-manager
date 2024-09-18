{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "baka";
  home.homeDirectory = "/home/baka";
  targets.genericLinux.enable = true;
  
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    ".config/fish/config.fish".source = ./fish/config.fish;
    ".config/fish/functions/fish_greeting.fish".source = ./fish/functions/fish_greeting.fish;
    ".config/fish/functions/wconf.fish".source = ./fish/functions/wconf.fish;
    ".config/fish/functions/scrshot.fish".source = ./fish/functions/scrshot.fish;
    ".config/fish/functions/hconf.fish".source = ./fish/functions/hconf.fish;
    ".config/nvim/init.lua".source = ./nvim/init.lua;
    ".config/nvim/lua/config/lazy.lua".source = ./nvim/lua/config/lazy.lua;
    ".config/nvim/lua/plugins/flog.lua".source = ./nvim/lua/plugins/flog.lua;
    ".config/nvim/lua/plugins/neotree.lua".source = ./nvim/lua/plugins/neotree.lua;
    ".config/nvim/lua/plugins/pywal16.lua".source = ./nvim/lua/plugins/pywal16.lua;
    ".config/nvim/lua/plugins/telescope.lua".source = ./nvim/lua/plugins/telescope.lua;
    ".config/nvim/lua/plugins/treesitter.lua".source = ./nvim/lua/plugins/treesitter.lua;
    
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/baka/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
