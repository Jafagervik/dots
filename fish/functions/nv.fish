function nv --wraps=nvim --description 'alias nv=nvim'
    nvim $argv
end

function nvconf --description 'nvim config'
    nvim ~/dots/nvim/lua/jaf/remap.lua
end
