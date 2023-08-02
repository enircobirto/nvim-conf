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

lsp.setup()
