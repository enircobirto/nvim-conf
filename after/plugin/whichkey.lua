local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
    return
end

local leadermappings = {

    e = { "<CMD>lua vim.diagnostic.open_float(0, {scope='line'})<CR>", "Show diagnostics" },
    ["k"] = { "<CMD>bdelete<CR>", "Kill Buffer" }, -- Close current file
    ["q"] = { "<CMD>q<CR>", "Quit" },              -- Quit Neovim after saving the file
    ["w"] = { "<CMD>w!<CR>", "Save" },             -- Save current file
    ["o"] = { "<CMD>SymbolsOutline<CR>", "Symbols Outline"},
    ["m"] = { "<CMD>MinimapToggle<CR>", "MinimapToggle" },
    ["n"] = { "<CMD>noh<CR>", "No Highlight" },
    ["u"] = { "<CMD>UndotreeToggle<CR><CMD>NvimTreeToggle<CR>", "UndotreeToggle" },
    ["c"] = { "<CMD>Commentary<CR>", "Comment line"},

    f = {
        name = "Files",
        f = { "<CMD>Telescope find_files<cr>", "Find file" },
        w = { "<CMD>Telescope live_grep<cr>", "Live grep" },
        b = { "<CMD>Telescope buffers<cr>", "See buffers" },
        a = { "<CMD>Telescope find_files follow=true no_ignore=true hidden=true <cr>", "Find all files" },
    },

    -- d = {
    --     name = "Debugger",
    --     b = { "<CMD>lua require'dap'.toggle_breakpoint()<CR>", "Toggle Breakpoint" },
    --     d = { "<CMD>lua require'dap'.continue()<CR>", "Debug/Continue" },
    --     o = { "<CMD>lua require'dapui'.toggle()<CR>", "Open DAP UI" },
    --     t = { "<CMD>lua require'dap-python'.setup(vim.fn.exepath('python'))<CR>", "Setup to current python venv" },
    --     c = { "<CMD>lua require('dapui').float_element('console',{width=160,height=30,position='center'})<CR>", "Float DAP Console" },
    -- },
    s = { "<CMD>so<CR>", "Source" },
    l = {
        name = "LSP stuff",
        r = { "<CMD>lua vim.lsp.buf.rename()<CR>", "Rename" },
        f = { "<CMD>lua vim.lsp.buf.format()<CR>", "Format" },
    },
}

local mappings = {
    g = {
        name = "Navigation ('Go')",
        d = { "<CMD>Telescope lsp_definitions<CR>", "Go to definitions" },
        r = { "<CMD>Telescope lsp_references<CR>", "Go to references" },
        i = { "<CMD>Telescope lsp_implementations<CR>", "Go to references" },
    },
    c = {
        s = { "<CMD>Telescope colorscheme<CR>", "Change colorscheme" }
    },
    Q = {
        ["Q"] = { "<CMD>qa <CR>", "Quit ALL *" },
        ["W"] = { "<CMD>wqa <CR>", "Save + Quit ALL" },
        ["A"] = { "<CMD>qa!<CR>", "Quit ALL !" },

    }
}

local setup = {
    plugins = {
        marks = true,         -- shows a list of your marks on ' and `
        registers = true,     -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {
            enabled = true,   -- enabling this will show WhichKey when pressing z= to select spelling suggestions
            suggestions = 20, -- how many suggestions should be shown in the list?
        },
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
            operators = false,   -- adds help for operators like d, y, ... and registers them for motion / text object completion
            motions = true,      -- adds help for motions
            text_objects = true, -- help for text objects triggered after entering an operator
            windows = true,      -- default bindings on <c-w>
            nav = true,          -- misc bindings to work with windows
            z = true,            -- bindings for folds, spelling and others prefixed with z
            g = true,            -- bindings for prefixed with g
        },
    },
    -- add operators that will trigger motion and text object completion
    -- to enable all native operators, set the preset / operators plugin above
    -- operators = { gc = "Comments" },
    key_labels = {
        -- override the label used to display some keys. It doesn't effect WK in any other way.
        -- For example:
        -- ["<space>"] = "SPC",
        -- ["<cr>"] = "RET",
        -- ["<tab>"] = "TAB",
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+",      -- symbol prepended to a group
    },
    popup_mappings = {
        scroll_down = "<c-d>", -- binding to scroll down inside the popup
        scroll_up = "<c-u>",   -- binding to scroll up inside the popup
    },
    window = {
        border = "rounded",       -- none, single, double, shadow
        position = "bottom",      -- bottom, top
        margin = { 1, 0, 1, 0 },  -- extra window margin [top, right, bottom, left]
        padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
        winblend = 0,
    },
    layout = {
        height = { min = 4, max = 25 },                                           -- min and max height of the columns
        width = { min = 20, max = 50 },                                           -- min and max width of the columns
        spacing = 3,                                                              -- spacing between columns
        align = "left",                                                           -- align columns left, center or right
    },
    ignore_missing = true,                                                        -- enable this to hide mappings for which you didn't specify a label
    hidden = { "<silent>", "<CMD>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
    show_help = true,                                                             -- show help message on the command line when the popup is visible
    triggers = "auto",                                                            -- automatically setup triggers
    -- triggers = {"<leader>"} -- or specify a list manually
    triggers_blacklist = {
        -- list of mode / prefixes that should never be hooked by WhichKey
        -- this is mostly relevant for key maps that start with a native binding
        -- most people should not need to change this
        i = { "j", "k" },
        v = { "j", "k" },
    },
}

local leaderopts = {
    mode = "n",     -- NORMAL mode
    prefix = "<leader>",
    buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true,  -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true,  -- use `nowait` when creating keymaps
}

local opts = {
    mode = "n",     -- NORMAL mode
    buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true,  -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true,  -- use `nowait` when creating keymaps
}

which_key.setup(setup)
which_key.register(leadermappings, leaderopts)
which_key.register(mappings, opts)
