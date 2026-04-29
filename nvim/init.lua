vim.api.nvim_create_autocmd("FileType", {
   callback = function(args)
      local lang = vim.treesitter.language.get_lang(args.match)
      if lang and vim.treesitter.language.add(lang) then
         if vim.api.nvim_buf_line_count(args.buf) <= 10000 then
            vim.treesitter.start()
         end
      end
   end,
})
require("physick")
require("config.lazy")

