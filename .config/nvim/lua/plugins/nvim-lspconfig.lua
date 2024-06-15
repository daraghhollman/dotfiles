return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require("lspconfig").pyright.setup{
            capabilities = capabilities
        }

        require("lspconfig").texlab.setup{
            capabilities = capabilities
        }

        require("lspconfig").lua_ls.setup{
            capabilities = capabilities
        }


    end
}
