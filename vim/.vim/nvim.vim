lua << EOF

-- require'lspconfig'.pyright.setup{}

require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
    highlight = {
    enable = true,
    custom_captures = {
        -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
        ["foo.bar"] = "Identifier",
        },
    },
      indent = { enable = false},
      incremental_selection = {
      enable = true,
      keymaps = {
          init_selection = "gnn",
          -- node_incremental = "grn",
          -- scope_incremental = "grc",
          -- node_decremental = "grm",
          },
      },
}
EOF

let g:neovide_cursor_antialiasing=v:true
let g:neovide_refresh_rate=60
let g:neovide_no_idle=v:true
" let g:neovide_fullscreen=v:true
" let g:neovide_transparency=0.9
let g:neovide_cursor_trail_length=0
let g:neovide_cursor_animation_length=0
" let g:neovide_cursor_vfx_mode = "railgun"
" let g:neovide_cursor_vfx_mode = "ripple"
" let g:neovide_cursor_vfx_particle_lifetime=1.2

augroup neovim_terminal
    autocmd!
    " Enter Terminal-mode (insert) automatically
    autocmd TermOpen * startinsert
    " Disables number lines on terminal buffers
    autocmd TermOpen * :set nonumber norelativenumber
    " allows you to use Ctrl-c on terminal window
    autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
augroup END

