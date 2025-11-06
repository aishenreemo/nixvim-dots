{ pkgs, ... }: {
  config.globals = {
    mapleader = " ";
    encoding = "utf8";
    loaded_netrw = 1;
    loaded_netrwPlugin = 1;
  };

  config.opts = {
    confirm = true;
    laststatus = 3;
    title = true;
    clipboard = "unnamedplus";
    cmdheight = 1;
    cursorline = true;

    number = true;
    relativenumber = true;
    ruler = true;

    expandtab = true;
    shiftwidth = 4;
    smartindent = true;
    hidden = true;
    ignorecase = true;
    smartcase = true;
    mouse = "a";
    signcolumn = "yes";
    splitbelow = true;
    splitright = true;
    tabstop = 8;
    termguicolors = true;
    timeoutlen = 400;
    shortmess = "F";
    hlsearch = false;
    incsearch = true;
    scrolloff = 8;
  };

  imports = [ 
    ./alpha.nix
    ./treesitter.nix
    ./harpoon.nix
    ./lualine.nix 
    ./lsp.nix 
    ./files.nix
    ./nvim-tree.nix
    ./telescope.nix
    ./autocommands.nix
  ];


  config.extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "kizu.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "aishenreemo";
        repo = "kizu.nvim";
        rev = "master";
        hash = "sha256-1uBkE9YSOKq9bxYjOKhpvhAPOv4tppoe89BBGRwTZdo=";
      }; 
    })
  ];

  config.plugins.gitsigns.enable = true;
  config.plugins.presence.enable = true;

  config.colorscheme = "kizu";

  config.keymaps = [
  {
    mode = "n";
    key = "J";
    action = "mzJ`z";
  }
  {
    mode = "n";
    key = "<C-d>";
    action = "<C-d>zz";
  }
  {
    mode = "n";
    key = "<C-u>";
    action = "<C-u>zz";
  }
  {
    mode = "n";
    key = "n";
    action = "nzzzv";
  }
  {
    mode = "n";
    key = "N";
    action = "Nzzzv";
  }

  {
    mode = "v";
    key = "J";
    action = ":m '>+1<CR>gv=gv";
  }
  {
    mode = "v";
    key = "K";
    action = ":m '<-2<CR>gv=gv";
  }

  {
    mode = "n";
    key = "<leader>o";
    action = "o<Esc>";
    options.desc = "Insert a new line on normal mode";
  }
  {
    mode = "n";
    key = "<leader>w";
    action = "<cmd>set wrap!<CR>";
    options.desc = "Toggle word wrap";
  }

  {
    mode = [ "n" "v" ];
    key = "<leader>p";
    action = "\"_dP";
    options.desc = "Paste without copying to clipboard";
  }
  {
    mode = [ "n" "v" ];
    key = "<leader>d";
    action = "\"_d";
    options.desc = "Delete without copying to clipboard";
  }

  {
    mode = "n";
    key = "<C-S-Up>";
    action = "<cmd>resize +2<CR>";
  }
  {
    mode = "n";
    key = "<C-S-Down>";
    action = "<cmd>resize -2<CR>";
  }
  {
    mode = "n";
    key = "<C-S-Left>";
    action = "<cmd>vertical resize +2<CR>";
  }
  {
    mode = "n";
    key = "<C-S-Right>";
    action = "<cmd>vertical resize -2<CR>";
  }

  {
    mode = "n";
    key = "<leader>r";
    action = "<cmd>lua package.loaded.presence:update()<CR>";
    options.desc = "Reload Discord RPC";
  }
  {
    mode = "n";
    key = "<leader>s";
    action = ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>";
  }

  {
    mode = "i";
    key = "<C-c>";
    action = "<Esc>";
  }
  ];
}
