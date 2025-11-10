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
    {
      event = ["FileType"];
      pattern = ["markdown"];
      command = ''
        setlocal conceallevel=2
        setlocal concealcursor=nvic
        syn region markdownWikiLink start="\[\[" end="\]\]" contains=markdownWikiLinkIdWithPipe,markdownUrl keepend oneline concealends

        syn region markdownLinkText start="!\=\[\%(\%(\_[^][]\|\[\_[^][]*\]\)*]\%( \=[[(]\)\)\@=" end="\]\%( \=[[(]\)\@=" nextgroup=markdownLink,markdownId skipwhite contains=@markdownInline,markdownLineStart concealends

        syn region markdownLink start="(" end=")" contains=markdownUrl keepend contained conceal

        hi def link markdownWikiLink Underlined
      '';
    }
  ];
}
