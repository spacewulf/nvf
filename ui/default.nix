{ pkgs, ... }:

{
  vim = {
    ui = {
      noice = {
        enable = true;
        setupOpts = {
          presets = {
            bottom_search = false;
            command_palette = true;
            long_message_to_split = true;
          };
          lsp.override = {
            "vim.lsp.util.convert_input_to_markdown_lines" = true;
            "vim.lsp.util.stylize_markdown" = true;
            "cmp.entry.get_documentation" = true;
          };
        };
      };
    };
  };
}
