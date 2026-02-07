{ lib, ... }:

{
  vim.augroups = [
    { name = "highlight-yank"; clear = true; }
    { name = "linting-init"; clear = true; }
    { name = "treesitter-init"; clear = true; }
  ];
  vim.autocmds = [
    {
      event = [ "FileType" ];
      pattern = [ "arduino" ];
      group = "treesitter-init";
      callback = lib.generators.mkLuaInline ''
        function()
          vim.lsp.enable('arduino_language_server')
        end
      '';
    }
    {
      event = [ "TextYankPost" ];
      group = "highlight-yank";
      callback = lib.generators.mkLuaInline ''
        function()
          vim.hl.on_yank()
        end
      '';
    }
    # {
    #   event = [ "BufWritePost" ];
    #   group = "linting-init";
    #   callback = lib.generators.mkLuaInline ''
    #     function()
    #       require("lint").try_lint()
    #     end
    #   '';
    # }
  ];
}
