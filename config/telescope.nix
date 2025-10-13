{
  plugins.telescope.enable = true;
  keymaps = [
  {
    mode = "n";
    key = "<leader>tt";
    action = "<cmd>Telescope builtin<CR>";
    options.desc = "Telescope Builtins";
  }
  {
    mode = "n";
    key = "<leader>te";
    action = "<cmd>Telescope find_files<CR>";
    options.desc = "Telescope Find Files";
  }
  {
    mode = "n";
    key = "<leader>tg";
    action = "<cmd>Telescope git_files<CR>";
    options.desc = "Telescope Git Files";
  }
  {
    mode = "n";
    key = "<leader>tl";
    action = "<cmd>Telescope live_grep<CR>";
    options.desc = "Telescope Live Grep";
  }
  {
    mode = "n";
    key = "<leader>tb";
    action = "<cmd>Telescope buffers<CR>";
    options.desc = "Telescope Buffers";
  }
  {
    mode = "n";
    key = "<leader>th";
    action = "<cmd>Telescope help_tags<CR>";
    options.desc = "Telescope Help Tags";
  }
  ];

}
