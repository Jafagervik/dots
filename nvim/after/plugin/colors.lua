--require('oxocarbon').setup({
--    disable_background = false -- true
--})

function ColorMyPencils(color)
    color = color or "melange"
    --vim.opt.background = "dark"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
