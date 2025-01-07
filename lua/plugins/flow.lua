return {
  "0xstepit/flow.nvim",
  lazy = false,
  priority = 1000,
  tag = "v1.0.0",
    opts = {
      theme = {
        style = "dark", --  "dark" | "light"
        contrast = "high", -- "default" | "high"
        transparent = false, -- true | false
      },
      colors = {
        mode = "default", -- "default" | "dark" | "light"
        fluo = "pink", -- "pink" | "cyan" | "yellow" | "orange" | "green"
      },
      ui = {
        borders = "none", -- "theme" | "inverse" | "fluo" | "none"
        aggressive_spell = false, -- true | false
      },
    },
  }
