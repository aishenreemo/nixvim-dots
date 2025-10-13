{
  plugins.harpoon.enable = true;
  keymaps = [
  {
    mode = "n";
    key = "<leader>a";
    action = ''
      <cmd>lua require("harpoon"):list():add()<CR>
    '';
    options.desc = "Add file to Harpoon list";
  }
  {
    mode = "n";
    key = "<leader>n";
    action = ''
      <cmd>lua require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())<CR>
    '';
    options.desc = "Toggle Harpoon quick menu";
  }

  {
    mode = "n";
    key = "<leader>1";
    action = ''
      <cmd>lua require("harpoon"):list():select(1)<CR>
    '';
    options.desc = "Harpoon select 1";
  }
  {
    mode = "n";
    key = "<leader>2";
    action = ''
      <cmd>lua require("harpoon"):list():select(2)<CR>
    '';
    options.desc = "Harpoon select 2";
  }
  {
    mode = "n";
    key = "<leader>3";
    action = ''
      <cmd>lua require("harpoon"):list():select(3)<CR>
    '';
    options.desc = "Harpoon select 3";
  }
  {
    mode = "n";
    key = "<leader>4";
    action = ''
      <cmd>lua require("harpoon"):list():select(4)<CR>
    '';
    options.desc = "Harpoon select 4";
  }

  {
    mode = "n";
    key = "<leader>5";
    action = ''
      <cmd>lua require("harpoon"):list():select(5)<CR>
    '';
    options.desc = "Harpoon select 5";
  }

  {
    mode = "n";
    key = "<A-p>";
    action = ''
      <cmd>lua require("harpoon"):list():prev()<CR>
    '';
    options.desc = "Harpoon previous buffer";
  }
  {
    mode = "n";
    key = "<A-n>";
    action = ''
      <cmd>lua require("harpoon"):list():next()<CR>
    '';
    options.desc = "Harpoon next buffer";
  }
  ];
}
