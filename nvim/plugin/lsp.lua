require("mason").setup()

-- Reserve a space in the gutter
vim.opt.signcolumn = 'yes'

-- Add cmp_nvim_lsp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end,
})

-- require('lspconfig').gopls.setup({})
vim.lsp.enable('gopls')
-- require('lspconfig').ts_ls.setup({})
vim.lsp.enable('ts_ls')
-- require('lspconfig').rust_analyzer.setup({})
vim.lsp.enable('rust_analyzer')
-- require('lspconfig').html.setup({})
vim.lsp.enable('html')
-- require('lspconfig').cssls.setup({})
vim.lsp.enable('cssls')
-- require('lspconfig').clangd.setup({})
vim.lsp.enable('clangd')
-- require('lspconfig').bashls.setup({})
vim.lsp.enable('bashls')
-- require('lspconfig').jsonls.setup({})
vim.lsp.enable('jsonls')
-- require('lspconfig').sqls.setup({})
vim.lsp.enable('sqls')
-- require('lspconfig').zls.setup({})
vim.lsp.enable('zls')
-- require('lspconfig').csharp_ls.setup({})
vim.lsp.enable('csharp_ls')
-- require('lspconfig').jdtls.setup({})
vim.lsp.enable('jdtls')
-- require('lspconfig').vscode_spring_boot_tools.setup({})
-- require('lspconfig').prettier.setup({})
-- require('lspconfig').templ.setup({})
-- require('lspconfig').gleam.setup({})

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
	['<Right>'] = cmp.mapping.confirm({ select = false }),
	['<Tab>'] = cmp.mapping.confirm({ select = false }),
	['<Enter>'] = cmp.mapping.confirm({ select = false }),
  }),
})
