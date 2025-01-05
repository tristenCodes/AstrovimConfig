return {
  "nvim-neorg/neorg",
  lazy = false, -- Ensure Neorg loads immediately
  version = "*", -- Use the latest stable release
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default behavior
        ["core.concealer"] = {}, -- Adds icons and conceals syntax
        ["core.summary"] = {}, 
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp"
          }
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/Documents/notes/"
            }
          }
        }
        -- Add other modules here as needed
      },
    })
  end,
}
