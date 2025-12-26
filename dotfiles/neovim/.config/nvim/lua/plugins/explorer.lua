return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "v0.2.0",
        dependencies = { 
            "nvim-lua/plenary.nvim"
        },
	config = function()
	    local builtin = require("telescope.builtin")
	    vim.keymap.set("n", "<leader>ff", function()
	        builtin.find_files({ 
		    hidden = true,
		    file_ignore_patterns = { "^%.git/" },
	        })
	    end, { desc = "Telescope find files" })
	end
    }
}
