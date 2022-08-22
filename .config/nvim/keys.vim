" ---------- Raw Keymappings
nnoremap <silent>gd :Telescope lsp_definitions<cr>|             " Go to definition
nnoremap <silent>gr :Telescope lsp_references<cr>|              " Peek references
nnoremap <silent>qq :Cheatsheet<cr>|                            " Show cheatsheet
nnoremap <silent>do :lua vim.lsp.buf.code_action()<cr>|         " Show codeaction dropdown
nnoremap <silent>; :lua require("harpoon.mark").add_file()<cr>| " Add mark
tnoremap <silent><esc> <cmd>FloatermHide!<cr>|                  " Close floating terminal (while in terminal mode)
noremap <silent><tab> <c-w><c-w>|                               " Cycle focused pane
noremap <silent><s-tab> <c-w><c-h>|                             " Cycle focused pane backwards
" Skip around files a little faster
noremap <silent><s-j> 10j
noremap <silent><s-k> 10k

" ----------- <space> Keymappings
" ----- Home Row (Most Used Shortcuts)
nnoremap <silent><space>a :Telescope neoclip<cr>|               " Open palette: list register contents
nnoremap <silent><space>s :Telescope live_grep<cr>|             " Open palette: Search code
nnoremap <silent><space>d :AerialToggle<cr>|                    " Toggle symbols sidebar
nnoremap <silent><space>f :Telescope find_files<cr>|               " Open palette: Find open buffers
" nnoremap <silent><space>g :Telescope harpoon marks<cr>|         " List marks
nnoremap <silent><space>j :Rexplore<cr>|                " Reveal file in explorer
nnoremap <silent><space>h :20Lexplore<cr>|                " Toggle file explorer
nnoremap <silent><space>k :w<cr>|                               " Save
nnoremap <silent><space>l :FloatermToggle<cr>|                  " Open floating terminal
nnoremap <silent><space>; :noh<cr>|                             " Get rid of find highlighting
nnoremap <silent><space>g <cmd>lua vim.lsp.buf.formatting_sync()<cr>    

" ----- Other Handy Shortcuts
vnoremap <silent><space>yy "*y|                                 " Copy to system clipboard
nnoremap <silent><space>pp "*p|                                 " Paste from system clipboard
nnoremap <silent><space>i TroubleToggle document_diagnostics|                                 " Paste from system clipboard
nnoremap <silent><space>r :lua vim.lsp.buf.rename()<cr>|        " Rename symbol
nnoremap <silent><space>b :<C-u>call gitblame#echo()<cr>|       " Git blame
nnoremap <silent><space>p o<esc>p|                              " Shortcut to paste something on a new line
nnoremap <silent><space>xd "_dd|                                " Shortcut to delete without yanking
nnoremap <silent><space>rs :so $MYVIMRC<cr>|                    " Quick reload shortcut
nnoremap <silent><space>q :Bdelete<cr>|                         " Close buffer
nnoremap <silent><space>w <c-w>q|                               " Close window
nnoremap <silent><space><space> :Telescope buffers<cr>|      " Open palette: Find files
nnoremap <silent><space>e :MinimapToggle<cr>|                   " Toggle minimap (for when it gets jacked up)
nnoremap <silent><space>u :lua vim.lsp.buf.hover({focusable = false})<cr>| " Show hover doc
nnoremap <silent><space>i :lua vim.diagnostic.open_float({focusable = false})<cr>| " Show hover diagnostic
nnoremap <silent><space>rl :LspRestart<cr>

"----------- <ctrl> Keymappings
nnoremap <silent><c-j> :bnext<cr>|                              " Next buffer
nnoremap <silent><c-k> :bprev<cr>|                              " Previous buffer
nnoremap <silent><c-q> :Bdelete<cr>|                            " Close buffer
nnoremap <silent><c-w> <c-w>q|                                  " Close window
nnoremap <silent><c-f> <cmd>lua require('spectre').open()<cr>|  " Project wide find & replace

" ---------- Insert Mode Keymappings
imap jj <esc>|                                                  " Quick exit from insert mode

" ---------- COQ Keybindings
ino <silent><expr> <space>    pumvisible() ? (complete_info().selected == -1 ? "\<C-e><space>" : "\<C-y>") : "\<space>"
