local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup({
  completion = {
    list = {
      selection = { preselect = false, auto_insert = true }
    },
    menu = {
      auto_show = false,

      draw = {
        columns = {
          { "kind_icon" },
          { "label", "label_description", gap = 1 },
          { "kind" },
        }
      }
    },
  },
})
