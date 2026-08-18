return {
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
		opts = {
			theme = "onedark",
			highlights = {
				-- Match gutter background to main background
				LineNr = { fg = "#5c6370", bg = "bg" },

				TabLineFill = { bg = "bg" },
				TabLine = { bg = "bg" },
				TabLineSel = { bg = "#282c34" }, -- active tab
			},
		},
	},
	-- O hot-reload do Omarchy (omarchy-theme-hotreload.lua) procura o colorscheme
	-- nesta entrada. Sem ela o nvim só troca de tema ao reiniciar.
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "onedark",
		},
	},
}
