return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- default_component_configs = {}
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
				},
			},
		})
		vim.keymap.set("n", "<leader>ee", ":Neotree toggle right<CR>", {})
		vim.keymap.set("n", "<leader>ef", ":Neotree focus right<CR>", {})
	end,
}
