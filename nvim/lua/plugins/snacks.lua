return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[


        ___/\/\/\/\______/\/\/\/\/\__/\/\/\/\/\/\______/\/\_____
        _/\/\____/\/\__/\/\______________/\/\________/\/\/\/\___ 
      _/\/\____/\/\__/\/\______________/\/\______/\/\____/\/\_  
      _/\/\____/\/\__/\/\______________/\/\______/\/\/\/\/\/\_   
    ___/\/\/\/\______/\/\/\/\/\______/\/\______/\/\____/\/\_    
 ]],
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
