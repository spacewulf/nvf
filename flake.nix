{
  description = "NVF Flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };
  outputs =
    { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      packages.${system} = {
        default =
          (inputs.nvf.lib.neovimConfiguration {
            pkgs = nixpkgs.legacyPackages.${system};
            modules = [
              {
                config.vim = {
                  clipboard = {
                    enable = true;
                    registers = "unnamedplus";
                  };
                  utility = {
                    oil-nvim.enable = true;
                    mkdir.enable = true;
                    nix-develop.enable = true;
                  };
                  globals = {
                    setleader = " ";
                    setlocalleader = " ";
                  };
                  options = {
                    winborder = "rounded";
                    smarttab = true;
                    smartindent = true;
                    autoindent = true;
                    cursorline = true;
                    expandtab = true;
                    shiftwidth = 2;
                    tabstop = 2;
                    softtabstop = 2;
                    encoding = "UTF-8";
                    ruler = true;
                    title = true;
                    termguicolors = true;
                    hidden = false;
                    confirm = true;
                    scrolloff = 10;
                  };
                  keymaps = [
                    {
                      mode = "n";
                      key = "<leader>sb";
                      action = ''
                        function()
                        require('fzf-lua').buffers()
                        end
                      '';
                      lua = true;
                      desc = "[S]earch [B]uffers";
                    }
                    {
                      mode = "n";
                      key = "<leader>sf";
                      action = ''
                        function()
                        require('fzf-lua').files()
                        end
                      '';
                      lua = true;
                      desc = "[S]earch [F]iles";
                    }
                    {
                      mode = "n";
                      key = "<leader>sl";
                      action = ''
                        function()
                        require('fzf-lua').live_grep()
                        end
                      '';
                      lua = true;
                      desc = "[S]earch [L]ive Grep";
                    }
                    {
                      mode = "n";
                      key = "<leader>sh";
                      action = ''
                        function()
                        require('fzf-lua').helptags()
                        end
                      '';
                      lua = true;
                      desc = "[S]earch [H]elptags";
                    }
                    {
                      mode = "n";
                      key = "-";
                      action = "<CMD>Oil --float<CR>";
                      desc = "Open oil in floating window";
                    }
                    {
                      mode = "n";
                      key = "<leader>";
                      action = "<CMD>quit<CR>";
                      desc = "Quit current buffer";
                    }
                    {
                      mode = "x";
                      key = "p";
                      action = "\"_dP";
                      desc = "Keep current register contents when pasting";
                    }
                    {
                      mode = "n";
                      key = "x";
                      action = "\"_x";
                      desc = "Keep current register contents when deleting a character";
                    }
                    {
                      mode = "n";
                      key = "<leader>wq";
                      action = "<CMD>wq<CR>";
                      desc = "Write and Quit current buffer";
                    }
                    {
                      mode = "n";
                      key = "<leader>w";
                      action = "<CMD>write<CR>";
                      desc = "Write current buffer";
                    }
                    {
                      mode = "i";
                      key = "jk";
                      action = "<Esc>";
                      desc = "Exit insert mode";
                    }
                    {
                      mode = "n";
                      key = "<leader>th";
                      action = ''
                        function()
                          if vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()):match("oil") then
                            require("oil").toggle_hidden()
                          end
                        end
                      '';
                      lua = true;
                      desc = "Oil toggle hidden";
                    }
                  ];
                  extraPlugins = {
                    nightfox-nvim = {
                      package = pkgs.vimPlugins.nightfox-nvim;
                      setup = ''
                        require('nightfox').setup()
                        vim.cmd('colorscheme carbonfox')
                      '';
                    };
                  };
                  theme.enable = true;
                  treesitter = {
                    enable = true;
                    context.enable = true;
                  };
                  lsp.enable = true;
                  fzf-lua.enable = true;
                  autocomplete.blink-cmp = {
                    enable = true;
                    friendly-snippets.enable = true;
                    setupOpts = {
                      keymap.preset = "default";
                    };
                  };
                  languages = {
                    enableTreesitter = true;
                    nix.enable = true;
                    lua.enable = true;
                  };
                };
              }
            ];
          }).neovim;
      };
    };
}
