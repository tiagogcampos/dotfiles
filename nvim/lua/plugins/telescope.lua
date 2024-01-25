return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { 
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		{ 
			'nvim-telescope/telescope-fzf-native.nvim', 
			build = 'make' 
		},
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require('telescope.builtin')
		
		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					}
				}
			}
		})

		local keymap = vim.keymap

		keymap.set('n', '<leader>sf', builtin.find_files, { desc = "List all files" })
		keymap.set('n', '<leader>ss', builtin.grep_string, { desc = "List all files" })
		keymap.set('n', '<leader>sg', builtin.live_grep, { desc = "List all files" })
		keymap.set('n', '<leader><space>', builtin.buffers, { desc = "List buffers" })
	end
}
