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
		local handle = io.popen("fortune $HOME/.config/nvim/quotes/quotes") -- Executes the 'fortune' command in a separate process
		local fortune = handle:read("*a")                     -- Reads all output from the command
		handle:close()                                        -- Closes the file handle
		dashboard.section.footer.val = fortune
		-- Set margins and paddings
		local opts = {
			layout = {
				{ type = "padding", val = 12 }, -- Top padding
				dashboard.section.header,
				{ type = "padding", val = 6 }, -- Padding between header and buttons
				dashboard.section.buttons,
				{ type = "padding", val = 7 },
				dashboard.section.bottom_buttons,
				dashboard.section.footer,
			},
		}

		alpha.setup(opts)
	end,
}
