{ lib, ... }:

{
  vim = {
    clipboard = {
      enable = true;
      registers = "unnamedplus";
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
      inccommand = "split";
      showmode = false;

      smartcase = true;
      ignorecase = true;

      breakindent = true;
      timeoutlen = 300;
      undofile = true;
      list = true;
      listchars = "tab:»\\ ,trail:·,nbsp:␣";
    };
    globals = {
      setleader = " ";
      setlocalleader = " ";
      have_nerd_font = true;
    };
    diagnostics.config = {
      signs.text = lib.generators.mkLuaInline ''
        [vim.diagnostic.severity.ERROR] = "󰅚 ",
        [vim.diagnostic.severity.WARN] = "󰀪 ",
        [vim.diagnostic.severity.INFO] = "󰋽 ",
        [vim.diagnostic.severity.HINT] = "󰌶 ",
      '';
    };
    utility = {
      oil-nvim.enable = true;
      mkdir.enable = true;
      nix-develop.enable = true;
    };
    theme.enable = true;
  };
}
