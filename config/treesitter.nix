{
  plugins.treesitter = {
    enable = true;
    settings.ensure_installed = [ "nix" "rust" ];
    settings.auto_install = false;
    settings.highlight = {
      enable = true;
      additional_vim_regex_highlighting = false;
    };
  };
}
