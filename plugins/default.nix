{ pkgs, ... }:
let
  version-surround = "3.1.8";
in 
{
  vim = {
    fzf-lua.enable = true;
    statusline.lualine = {
      enable = true;
    };
    # pluginOverrides = {
    #   nvim-surround = pkgs.fetchFromGitHub {
    #     owner = "kylechui";
    #     repo = "nvim-surround";
    #     rev = "v${version-surround}";
    #     hash = "sha256-IzJ9PWUeEw52Gs5nCH3zAUBbar3Wq6PCN+Rt6HKC1pc=";
    #   };
    # };
    # startPlugins = with pkgs; [ vimPlugins.tmux-navigator vimPlugins.nightfox-nvim vimPlugins.vim-sleuth vimPlugins.mini-ai vimPlugins.mini-pairs ];
    extraPlugins = {
      nvim-surround = {
        package = "nvim-surround";
        setup = ''
          require('nvim-surround').setup()
        '';
      };
      tmux-navigator = {
        package = pkgs.vimPlugins.tmux-navigator;
        setup = ''
        '';
      };
      nightfox-nvim = {
        package = pkgs.vimPlugins.nightfox-nvim;
        setup = ''
          require('nightfox').setup()
          vim.cmd('colorscheme carbonfox')
        '';
      };
      vim-sleuth = {
        package = pkgs.vimPlugins.vim-sleuth;
      };
      mini-ai = {
        package = pkgs.vimPlugins.mini-ai;
        setup = ''
          require('mini.ai').setup()
        '';
      };
      mini-pairs = {
        package = pkgs.vimPlugins.mini-pairs;
        setup = ''
          require('mini.pairs').setup()
        '';
      };
    };
  };
}
