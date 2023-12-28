# gerbil.nvim

WORK IN PROGRESS

Check the `TODO` comments in the source code for now.

Install with [lazy.vim](https://github.com/folke/lazy.nvim)

```lua
{
  "p1xelHer0/gerbil.nvim",
  dependencies = {
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
    paredit = {},
  },
},
```

[Conjure](https://github.com/Olical/conjure)

[nvim-paredit](https://github.com/julienvincent/nvim-paredit)

[rainbow-delimiters.nvim](https://github.com/hiphish/rainbow-delimiters.nvim)

[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
