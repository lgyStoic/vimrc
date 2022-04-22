require'bufferline'.setup {
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left",
            },
        },
        close_command = function(bufnum)
            require('bufdelete').bufdelete(bufnum, true)
        end,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return "("..count..")"
        end,
        sort_by = 'insert_after_current',
        custom_filter = function(buf_number, buf_numbers)
            -- filter out filetypes you don't want to see
            if vim.bo[buf_number].filetype == "qf" then
                return false
            end
            if vim.bo[buf_number].buftype == "terminal" then
                return false
            end
            -- if string.find(vim.fn.bufname(buf_number), 'term://') == 1 then
            --     return false
            -- end
            return true
        end,
    }
}

local map = require'archvim/mappings'
map("n", "<F2>", "<cmd>BufferLineCyclePrev<CR>", { silent = true })
map("n", "<F3>", "<cmd>BufferLineCycleNext<CR>", { silent = true })
map("n", "gb", "<cmd>BufferLineCyclePrev<CR>", { silent = true })
map("n", "gt", "<cmd>BufferLineCycleNext<CR>", { silent = true })
map("n", "<F14>", "<cmd>BufferLineMovePrev<CR>", { silent = true })
map("n", "<F15>", "<cmd>BufferLineMoveNext<CR>", { silent = true })
map("n", "gB", "<cmd>BufferLineMovePrev<CR>", { silent = true })
map("n", "gT", "<cmd>BufferLineMoveNext<CR>", { silent = true })
map("n", "<F14>", "<cmd>BufferLineMovePrev<CR>", { silent = true })
map("n", "<F15>", "<cmd>BufferLineMoveNext<CR>", { silent = true })
map("n", "<C-F14>", "<cmd>BufferLineCloseLeft<CR>", { silent = true })
map("n", "<C-F15>", "<cmd>BufferLineCloseRight<CR>", { silent = true })
map("n", "g<C-b>", "<cmd>BufferLineCloseLeft<CR>", { silent = true })
map("n", "g<C-t>", "<cmd>BufferLineCloseRight<CR>", { silent = true })
