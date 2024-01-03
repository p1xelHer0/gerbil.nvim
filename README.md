# gerbil.nvim

> The unnatural home for Gerbil development is Neovim

This plugin will enable [Gerbil](https://cons.io/) related features in a `.ss` file if it finds a

`gxi` [shebang](https://en.wikipedia.org/wiki/Shebang_%28Unix%29)
```
#!/usr/bin/env gxi
```
or a Gerbil mode line
```
;;; -*- Gerbil -*-
```

WORK IN PROGRESS

Check the `TODO` comments in the source code for now.

Install with [lazy.vim](https://github.com/folke/lazy.nvim)

```lua
{
  "p1xelHer0/gerbil.nvim",
  dependencies = {
    -- WIP
    -- Currently trying to get nvim-paredit to work with Gerbil
    -- If you want to enable nvim-paredit
    -- set paredit.setup = true
    "julienvincent/nvim-paredit",
    config = function()
      require("nvim-paredit").setup()
    end,
  },
  ft = "scheme",
  -- Default settings
  -- Use `require("gerbil").setup( ... )` with other plugin managers
  opts = {
    conjure = {
      setup = true,
      command = "gxi",
      prompt_pattern = "%d*> ",
    },
    paredit = {
      setup = false,
    },
  },
},
```

[Conjure](https://github.com/Olical/conjure)

[nvim-paredit](https://github.com/julienvincent/nvim-paredit)

[rainbow-delimiters.nvim](https://github.com/hiphish/rainbow-delimiters.nvim)

[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
