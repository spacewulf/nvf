{
  vim = {
    lsp.enable = true;
    treesitter = {
      enable = true;
      context.enable = true;
    };
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
      rust.enable = true;
      lua.enable = true;
      python.enable = true;
      markdown.extensions.markview-nvim.enable = true;
    };
  };
}
