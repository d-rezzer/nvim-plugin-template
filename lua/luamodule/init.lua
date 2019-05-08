function GlobalLuaFunction()
    print "nvim-example-lua-plugin.luamodule.init GlobalLuaFunction: hello"
end

function CurrentLineInfo()
    local linenr = vim.api.nvim_win_get_cursor(0)[1]
    local curline = vim.api.nvim_buf_get_lines(0, linenr, linenr + 1, false)[1]
    print(string.format("current line [%d] has %d bytes", linenr, #curline))
end

function ShowBuffs()
    print(vim.api.nvim_list_bufs())
end
