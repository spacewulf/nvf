{ pkgs, ... }:
{
  imports = [
    ./snacks.nix
  ];
  vim = {
    fzf-lua.enable = true;
    git = {
      vim-fugitive.enable = true;
    };
    statusline.lualine = {
      enable = true;
    };
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
