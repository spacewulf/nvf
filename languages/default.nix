{
  vim = {
    lsp = {
      enable = true;
      lspconfig.enable = true;
    };
    treesitter = {
      enable = true;
      context.enable = true;
    };
    autocomplete.blink-cmp = {
      enable = true;
      friendly-snippets.enable = true;
      mappings = {
        confirm = "<C-y>";
        complete = "<C-s>";
        next = "<C-n>";
        previous = "<C-p>";
        scrollDocsDown = "<C-f>";
        scrollDocsUp = "<C-b>";
      };
    };
    languages = {
      enableTreesitter = true;
      nix.enable = true;
      rust.enable = true;
      java.enable = true;
      lua.enable = true;
      python.enable = true;
      # arduino = {
      #   enable = true;
      #   lsp.fqbn = "arduino:avr:nano";
      # };
      markdown = {
        enable = true;
        extensions.markview-nvim.enable = true;
      };
    };
  };
}
