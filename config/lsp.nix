{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        ts_ls.enable = true;
        lua_ls.enable = true;
        nixd.enable = true;
      };
    };

    rustaceanvim.enable = true;
    luasnip.enable = true;
    cmp = {
      enable = true;
      settings = {
        autoEnableSources = true;

        sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "buffer"; }
        { name = "path"; }
        { name = "cmdline"; }
        ];

        mapping = {
          "<C-k>" = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })";
          "<C-j>" = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert })";
          "<C-h>" = "cmp.mapping.scroll_docs(-4)";
          "<C-l>" = "cmp.mapping.scroll_docs(4)";
          "<CR>"  = "cmp.mapping.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace })";
          "<C-Space>" = "cmp.mapping.complete()";
        };
      };
    };
  };


  keymaps = [
  {
    mode = "n";
    key = "<leader>lf";
    action = "<cmd>lua vim.lsp.buf.format()<CR>";
    options.desc = "LSP Format buffer";
  }
  {
    mode = "n";
    key = "<leader>ld";
    action = "<cmd>lua vim.lsp.buf.definition()<CR>";
    options.desc = "LSP Go to definition";
  }
  {
    mode = "n";
    key = "<leader>lh";
    action = "<cmd>lua vim.lsp.buf.hover()<CR>";
    options.desc = "LSP Hover cursor";
  }
  {
    mode = "n";
    key = "<leader>lw";
    action = "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>";
    options.desc = "LSP Workspace symbols";
  }
  {
    mode = "n";
    key = "<leader>lc";
    action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
    options.desc = "LSP Show code actions";
  }
  {
    mode = "n";
    key = "<leader>lr";
    action = "<cmd>lua vim.lsp.buf.references()<CR>";
    options.desc = "LSP Show references";
  }
  {
    mode = "n";
    key = "<leader>lm";
    action = "<cmd>lua vim.lsp.buf.rename()<CR>";
    options.desc = "LSP Rename identifier";
  }
  {
    mode = "n";
    key = "<leader>lo";
    action = "<cmd>lua vim.diagnostic.open_float()<CR>";
    options.desc = "LSP Show diagnostics";
  }
  {
    mode = "n";
    key = "<leader>]";
    action = "<cmd>lua vim.diagnostic.jump({ count = 1 })<CR>";
    options.desc = "LSP Next diagnostic";
  }
  {
    mode = "n";
    key = "<leader>[";
    action = "<cmd>lua vim.diagnostic.jump({ count = -1 })<CR>";
    options.desc = "LSP Previous diagnostic";
  }
  ];
}
