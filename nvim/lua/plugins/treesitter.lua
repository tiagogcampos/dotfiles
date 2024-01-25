return {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "lua", "vim", "python", "go", "scala", "java", "yaml" },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		}) 
	end
}
