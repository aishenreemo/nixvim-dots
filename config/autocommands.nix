{ ... }: {
  autoCmd = [
    {
      event = ["VimEnter"];
      pattern = ["*.nix"];
      callback = {
        __raw = ''
          function()
            local home = os.getenv("HOME")
            local current = vim.fn.expand("%:p:h")
            local target = home .. "/.config/home-manager"
            print("hi " .. current .. " = " .. target)
            if current == target then
              vim.cmd("cd " .. target)
            end
          end
        '';
      };
    }
  ];
}
