return {
	"folke/which-key.nvim",
	event = "VimEnter",
	config = function()
		-- gain access to the which key plugin
		local which_key = require("which-key")

		-- Register prefixes for the different key mappings we have setup previously
		which_key.setup({
			spec = {
				{ "<leader>/", group = "Comments" },
				{ "<leader>c", group = "[C]ode" },
				{ "<leader>d", group = "[D]ebug" },
				{ "<leader>e", group = "[E]xplorer" },
				{ "<leader>f", group = "[F]ind" },
				{ "<leader>g", group = "[G]it" },
				{ "<leader>J", group = "[J]ava" },
				{ "<leader>w", group = "[W]indow" },
			},
		})
	end,
}
