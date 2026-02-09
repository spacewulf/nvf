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
      # mappings = {
      #   complete = mkMappingOption "Complete [blink.cmp]" "<C-Space>";
      #   confirm = mkMappingOption "Confirm [blink.cmp]" "<CR>";
      #   next = mkMappingOption "Next item [blink.cmp]" "<Tab>";
      #   previous = mkMappingOption "Previous item [blink.cmp]" "<S-Tab>";
      #   close = mkMappingOption "Close [blink.cmp]" "<C-e>";
      #   scrollDocsUp = mkMappingOption "Scroll docs up [blink.cmp]" "<C-d>";
      #   scrollDocsDown = mkMappingOption "Scroll docs down [blink.cmp]" "<C-f>";
      # };
      mappings = {
        confirm = "<C-y>";
        complete = "<C-s>";
        next = "<C-n>";
        previous = "<C-p>";
        scrollDocsDown = "<C-f>";
        scrollDocsUp = "<C-b>";
      };
      # setupOpts.keymap = {
      #   preset = "none";
      #   "<C-space>" = [ "show" "show_documentation" "hide_documentation" ];
      #   "<C-e>" = [ "hide" "fallback" ];
      #   "<C-y>" = [ "select_and_accept" "fallback" ];
      #   "<CR>" = [ ];
      #
      #   "<Up>" = [ "select_prev" "fallback" ];
      #   "<Down>" = [ "select_next" "fallback" ];
      #   "<C-p>" = [ "select_prev" "fallback_to_mappings" ];
      #   "<C-n>" = [ "select_next" "fallback_to_mappings" ];
      #
      #   "<C-b>" = [ "scroll_documentation_up" "fallback" ];
      #   "<C-f>" = [ "scroll_documentation_down" "fallback" ];
      #
      #   "<Tab>" = [ "snippet_forward" "fallback" ];
      #   "<S-Tab>" = [ "snippet_backward" "fallback" ];
      #
      #   "<C-k>" = [ "show_signature" "hide_signature" "fallback" ];
      # };
    };
    languages = {
      enableTreesitter = true;
      nix.enable = true;
      rust.enable = true;
      lua.enable = true;
      python.enable = true;
      markdown = {
        enable = true;
        extensions.markview-nvim.enable = true;
      };
    };
  };
}
