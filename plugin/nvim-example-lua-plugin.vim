
" The VimL/VimScript code is included in this file to demonstrate that the
" file is being loaded. It is not required for the Lua code to execute and can
" be deleted.


" won't find Lua files in the same location. So, you need to bootstrap your
" Lua code using a VimL file. There are two possibilities:

" 1. Lua code can be embedded in a VimL file by using a lua block.

" 2. Lua code can be built in a pure Lua file and imported as a module from
" the VimL file. `luamodule` is a directory in the `lua` folder. Because only
" the `luamodule` directory is specified, Neovim will look for a `lua.lua`
" file, then an `init.lua` file in that directory. In this case, it will find
" the `lua\luamodule\init.lua` file.
lua require("luamodule")

" Once the `require` statement completes, the `GlobalLuaFunction` Lua function
" defined in `lua\luamodule\init.lua` will be available.
lua GlobalLuaFunction()

" A Lua function can be mapped to a key. Here, Alt-Ctrl-G will echo a message.
nmap <M-C-G> :lua GlobalLuaFunction()<CR>

" Lua code can be defined in other files, rather than just `lua.lua` or
" `init.lua`. Here, Lua code is defined in `lua\luamodule\definestuff.lua`.
"lua require("luamodule.definestuff").showstuff()
lua require("mlua")
nnoremap <localleader>bb :lua ShowBuffs()<CR>


