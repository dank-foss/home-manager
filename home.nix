{ config, pkgs, ... }@inputs:

{
  home.username = "baka";
  home.homeDirectory = "/home/baka";
  targets.genericLinux.enable = true;

  home.stateVersion = "24.05";
  nixpkgs.config.allowUnfree = true;

  imports = [ inputs.dms.homeModules.dankMaterialShell.default ];
  home.packages = with pkgs; [
    gowall
    deno
    nodejs
    htop
    eww
    apostrophe
    foliate
    redshift
    flameshot
    dunst
    rofi
    picom-pijulius
    zoxide
    bat
    neovim
    nixfmt-rfc-style
    nitrogen
    python313Packages.jedi-language-server
    yazi
    jetbrains.pycharm-community-bin
    pywal16
    luajitPackages.luarocks-nix
    lua51Packages.lua
    obsidian
    nixd
    git
    statix
    librewolf-bin
    nerdfetch
    element-desktop
    element-call
    zenith-nvidia
    telegram-desktop
    # spotify-tray
    spotify
    zathura
    temurin-jre-bin
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
    # alpaca
    sublime-merge
    quickshell
    stylua
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
  home.file = { };

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
  programs.git = {
    enable = true;
    aliases = { ac = "commit -am"; };
    userEmail = "chadfoss@duck.com";
    userName = "chaddy";
    extraConfig = { init = { defaultBranch = "main"; }; };
  };

  programs.gitui.enable = true;
  programs.starship = {
    enable = true;
    settings = {
      # add_newline = false;

      # character = {
      #   success_symbol = "[➜](bold green)";
      #   error_symbol = "[➜](bold red)";
      # };

      # package.disabled = true;
    };
  };
  programs.bash = { enable = true; };
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
