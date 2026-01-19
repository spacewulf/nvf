{
  description = "NVF Flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };
  outputs = { self, nixpkgs, ... } @ inputs: 
    let
      system = "x86_64-linux";
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
                };
                keymaps = [
                        {
                                mode = "n";
                                key = "<leader>sh";
                                action = "<CMD>lua require('fzf-lua').helptags()<CR>";
                        }
                        {
                                mode = "n";
                                key = "<leader>sf";
                                action = "<CMD>lua require('fzf-lua').files()<CR>";
                        }
                        {
                                mode = "n";
                                key = "<leader>sl";
                                action = "<CMD>lua require('fzf-lua').live_grep()<CR>";
                        }
                        {
                                mode = "n";
                                key = "-";
                                action = "<CMD>Oil --float<CR>";
                        }
                        {
                                mode = "n";
                                key = "<leader>";
                                action = "<CMD>quit<CR>";
                        }
                        {
                                mode = "x";
                                key = "p";
                                action = "\"_dP";
                        }
                        {
                                mode = "n";
                                key = "x";
                                action = "\"_x";
                        }
                        {
                                mode = "n";
                                key = "<leader>wq";
                                action = "<CMD>wq<CR>";
                        }
                        {
                                mode = "n";
                                key = "<leader>w";
                                action = "<CMD>write<CR>";
                        }
                        {
                                mode = "i";
                                key = "jk";
                                action = "<Esc>";
                        }
                ];
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
        })
      .neovim;
    };
  };
}
