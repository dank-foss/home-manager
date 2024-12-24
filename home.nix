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
	asciiquarium
	meld
	zoxide
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
#    ".config/fish/functions/wconf.fish".source = ./fish/functions/wconf.fish;
#    ".config/fish/functions/scrshot.fish".source = ./fish/functions/scrshot.fish;
#    ".config/fish/functions/hconf.fish".source = ./fish/functions/hconf.fish;


    # nvim
	".config/nvim/init.lua".source = ./nvim/init.lua;
	".config/nvim/lua/config/lazy.lua".source = ./nvim/lua/config/lazy.lua;
	".config/nvim/lua/plugins/flog.lua".source = ./nvim/lua/plugins/flog.lua;
	".config/nvim/lua/plugins/neotree.lua".source = ./nvim/lua/plugins/neotree.lua;
	".config/nvim/lua/plugins/colorschemes.lua".source = ./nvim/lua/plugins/colorschemes.lua;
	".config/nvim/lua/plugins/telescope.lua".source = ./nvim/lua/plugins/telescope.lua;
	".config/nvim/lua/plugins/treesitter.lua".source = ./nvim/lua/plugins/treesitter.lua;
	".config/nvim/lua/plugins/lualine.lua".source = ./nvim/lua/plugins/lualine.lua;
	".config/nvim/lua/plugins/gitsigns.lua".source = ./nvim/lua/plugins/gitsigns.lua;
	".config/nvim/lua/plugins/comment.lua".source = ./nvim/lua/plugins/comment.lua;
	".config/nvim/lua/plugins/fugitive.lua".source = ./nvim/lua/plugins/fugitive.lua;
	".config/nvim/lua/plugins/lspconf.lua".source = ./nvim/lua/plugins/lspconf.lua;
	".config/nvim/lua/plugins/oil.lua".source = ./nvim/lua/plugins/oil.lua;
	".config/nvim/lua/plugins/nonels.lua".source = ./nvim/lua/plugins/nonels.lua;
	".config/nvim/lua/plugins/completions.lua".source = ./nvim/lua/plugins/completions.lua;
	".config/nvim/lua/plugins/debug.lua".source = ./nvim/lua/plugins/debug.lua;
	".config/nvim/lua/plugins/autoclose.lua".source = ./nvim/lua/plugins/autoclose.lua;
	".config/nvim/lua/plugins/autosession.lua".source = ./nvim/lua/plugins/autosession.lua;
	".config/nvim/lua/plugins/dashboard.lua".source = ./nvim/lua/plugins/dashboard.lua;    
	".config/nvim/lua/plugins/harpoon.lua".source = ./nvim/lua/plugins/harpoon.lua;    
	".config/nvim/lua/plugins/multicursor.lua".source = ./nvim/lua/plugins/multicursor.lua;
	".config/nvim/lua/plugins/highlight.lua".source = ./nvim/lua/plugins/highlight.lua;
	".config/nvim/lua/plugins/indent.lua".source = ./nvim/lua/plugins/indent.lua;
	".config/nvim/lua/plugins/codeium.lua".source = ./nvim/lua/plugins/codieum.lua;	
	".config/kitty/kitty.conf".source = ./kitty/kitty.conf;	
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

	programs.git = {
		enable = true;
		aliases = {
			ac = "commit -am";
		};
		userEmail = "chadfoss@duck.com";
		userName = "chaddy";
	}; 
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
