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
  home.packages = with pkgs; [
    gowall
    deno
    nodejs
    htop
    eww
    zoxide
    bat
    neovim
    librewolf
    nixfmt-rfc-style
    nitrogen
    yazi
    swww
    jetbrains.pycharm-community-bin
    pywal16
    luajitPackages.luarocks-nix
    lua51Packages.lua
    obsidian
    nixd
    git
    statix
    brave
    stow
    gitg
    pika-backup
    zig
    figlet
    pfetch-rs
    jetbrains-mono
    ripgrep
    julia-mono
    prettierd
    biome
    tree-sitter
    markdownlint-cli2
    stylelint
    cmake
    meson
    cpio
    pkg-config
    atuin
    legcord
    alpaca
    sublime-merge
    fretboard
    bluetui
    wl-clipboard-rs
    wev
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
  nixpkgs.config.allowUnfree = true;

  programs.git = {
    enable = true;
    aliases = {
      ac = "commit -am";
    };
    userEmail = "chadfoss@duck.com";
    userName = "chaddy";
  };

  programs.gitui.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
