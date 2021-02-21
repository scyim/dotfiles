let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly','modified' ] ],
      \   'right': [ [ 'percent' ], [ 'lineinfo' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
      \   'asyncrun': 'AsynrunStatus',
      \ },
      \ }
