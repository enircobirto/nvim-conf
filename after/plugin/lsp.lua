
local lspconfig = require('lspconfig')
local vue_language_server_path = '/home/opc/.local/share/nvim/mason/bin/vue-language-server'

-- lspconfig.tsserver.setup {} 
lspconfig.volar.setup {
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
}

local lsp = require('lsp-zero')

lsp.preset()

lsp.ensure_installed({'tsserver','eslint','lua_ls','rust_analyzer'})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local smp_mappings = lsp.defaults.cmp_mappings({
	['<C-Up>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-Down>'] = cmp.mapping.select_next_item(cmp_select),
	['<Right>'] = cmp.mapping.abort(),
	['<C-Right>'] = cmp.mapping.confirm({select = true}),
	['<Up>'] = cmp.mapping.abort(),
	['<Down>'] = cmp.mapping.abort(),
	['<C-Space>'] = cmp.mapping.complete()
})

cmp.setup({mapping = smp_mappings})

lsp.set_preferences({sign_icons = {'aaa'}})

require('lspconfig').pyright.setup({})

lsp.setup()
