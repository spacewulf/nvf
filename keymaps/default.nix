{
  vim.keymaps = [
    {
      mode = "n";
      key = "<leader>o";
      action = "o<Esc>";
      desc = "Insert linebreak after cursor and stay in normal mode";
    }
    { 
      mode = "n"; 
      key = "<leader>O"; 
      action = "O<Esc>"; 
      desc = "Insert linebreak before cursor and stay in normal mode";
    }
    {
      mode = "n";
      key = "gl";
      action = ''
        function()
          vim.diagnostic.open_float()
        end
        '';
      lua = true;
      desc = "Open diagnostics in Float";
    }
    {
      mode = "n";
      key = "[d";
      action = ''
        function()
          vim.diagnostic.jump({ count = 1, float = true })
        end
        '';
      lua = true;
      desc = "Go to next diagnostic";
    }
    {
      mode = "n";
      key = "]d";
      action = ''
        function()
          vim.diagnostic.jump({ count = -1, float = true })
        end
        '';
      lua = true;
      desc = "Go to previous diagnostic";
    }
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





    # fzf-lua keybinds
    {
      mode = "n";
      key = "<leader>/";
      action = ''
        function()
          require('fzf-lua').lgrep_curbuf()
        end
      '';
      lua = true;
      desc = "[/] Fuzzily search in current buffer";
    }
    {
      mode = "n";
      key = "<leader><leader>";
      action = ''
        function()
        require('fzf-lua').buffers()
        end
      '';
      lua = true;
      desc = "[ ] Find existing buffers";
    }
    {
      mode = "n";
      key = "<leader>s.";
      action = ''
        function()
        require('fzf-lua').oldfiles()
        end
      '';
      lua = true;
      desc = "[S]earch Recent Files (\".\" for repeat)";
    }
    {
      mode = "n";
      key = "<leader>sd";
      action = ''
        function()
        require('fzf-lua').lsp_workspace_diagnostics()
        end
      '';
      lua = true;
      desc = "[S]earch [D]iagnostics";
    }
    {
      mode = "n";
      key = "<leader>sg";
      action = ''
        function()
        require('fzf-lua').git_files()
        end
      '';
      lua = true;
      desc = "[S]earch in [G]it";
    }
    {
      mode = "n";
      key = "<leader>sk";
      action = ''
        function()
        require('fzf-lua').keymaps()
        end
      '';
      lua = true;
      desc = "[S]earch [K]eymaps";
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




    # lsp-related keybinds
    {
      mode = "n";
      key = "grn";
      action = ''
        function()
          vim.lsp.buf.rename()
        end
      '';
      lua = true;
      desc = "[R]e[N]ame";
    }
    {
      mode = "n";
      key = "gra";
      action = ''
        function()
          require('fzf-lua').lsp_code_actions()
        end
      '';
      lua = true;
      desc = "[G]oto Code [A]ction";
    }
    {
      mode = "n";
      key = "grr";
      action = ''
        function()
          require('fzf-lua').lsp_references()
        end
      '';
      lua = true;
      desc = "[G]oto [R]eferences";
    }
    {
      mode = "n";
      key = "gri";
      action = ''
        function()
          require('fzf-lua').lsp_implementations()
        end
      '';
      lua = true;
      desc = "[G]oto [I]mplementation";
    }
    {
      mode = "n";
      key = "grd";
      action = ''
        function()
          require('fzf-lua').lsp_declarations()
        end
      '';
      lua = true;
      desc = "[G]oto [D]eclaration";
    }
    {
      mode = "n";
      key = "grD";
      action = ''
        function()
          require('fzf-lua').lsp_definitions()
        end
      '';
      lua = true;
      desc = "[G]oto [D]efinition";
    }
    {
      mode = "n";
      key = "gO";
      action = ''
        function()
          require('fzf-lua').lsp_document_symbols()
        end
      '';
      lua = true;
      desc = "Open Document Symbols";
    }
    {
      mode = "n";
      key = "gW";
      action = ''
        function()
          require('fzf-lua').lsp_live_workspace_symbols()
        end
      '';
      lua = true;
      desc = "Open Workspace Symbols";
    }
    {
      mode = "n";
      key = "grt";
      action = ''
        function()
          require('fzf-lua').lsp_typedefs()
        end
      '';
      lua = true;
      desc = "[G]oto [T]ype Definition";
    }

    {
      mode = "n";
      key = "-";
      action = "<CMD>Oil --float<CR>";
      desc = "Open oil in floating window";
    }
    {
      mode = "n";
      key = "<leader>q";
      action = "<CMD>quit<CR>";
      desc = "Quit current buffer";
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
    # Insert mode keymaps
    {
      mode = "i";
      key = "jk";
      action = "<Esc>";
      desc = "Exit insert mode";
    }
    # Visual mode keymaps
    {
      mode = "v";
      key = ">";
      action = ">gv";
      desc = "Visual indent <";
    }
    {
      mode = "v";
      key = "<";
      action = "<gv";
      desc = "Visual indent <";
    }
    {
      mode = "v";
      key = "p";
      action = "\"_dP";
      desc = "Keep current register contents when pasting";
    }
  ];
}
