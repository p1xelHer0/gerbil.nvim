# gerbil.nvim

WORK IN PROGRESS

Check the `TODO` comments in the source code for now.

Install with [lazy.vim](https://github.com/folke/lazy.nvim)

```lua
{
  "p1xelHer0/gerbil.nvim",
  ft = "scheme",
  -- Default settings
  opts = {
    conjure = {
      setup = true,
      command = "gxi",
      prompt_pattern = "%d*> ",
    },
  },
},
```

[Conjure](https://github.com/Olical/conjure)

[rainbow-delimiters.nvim](https://github.com/hiphish/rainbow-delimiters.nvim)

[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
