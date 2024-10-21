return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[███████╗███╗   ███╗ ██████╗  ██████╗ ████████╗██╗  ██╗███╗   ██╗██╗   ██╗]],
			[[██╔════╝████╗ ████║██╔═══██╗██╔═══██╗╚══██╔══╝██║  ██║████╗  ██║██║   ██║]],
			[[███████╗██╔████╔██║██║   ██║██║   ██║   ██║   ███████║██╔██╗ ██║██║   ██║]],
			[[╚════██║██║╚██╔╝██║██║   ██║██║   ██║   ██║   ██╔══██║██║╚██╗██║╚██╗ ██╔╝]],
			[[███████║██║ ╚═╝ ██║╚██████╔╝╚██████╔╝   ██║   ██║  ██║██║ ╚████║ ╚████╔╝ ]],
			[[╚══════╝╚═╝     ╚═╝ ╚═════╝  ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝  ╚═══╝  ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("SPC f f", "  Find Files", ":Telescope  find_files<CR>"),
			dashboard.button("SPC f r", "  Recent Files", ":Telescope oldfiles<CR>"),
			dashboard.button("SPC f n", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("q", "󰩈  Quit", ":qa<CR>"),
		}

		local handle = io.popen("fortune")
		local fortune = handle:read("*a")
		handle:close()
		dashboard.section.footer.val = fortune

		-- Set margins and paddings
		local opts = {
			layout = {
				{ type = "padding", val = 12 }, -- Top padding
				dashboard.section.header,
				{ type = "padding", val = 4 }, -- Padding between header and buttons
				dashboard.section.buttons,
				dashboard.section.footer,
			},
		}

		alpha.setup(opts)
		vim.cmd([[autocmd User AlphaReady echo 'ready']])
	end,
}
