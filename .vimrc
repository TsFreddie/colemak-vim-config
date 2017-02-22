""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colemak-Vim Mappings
"
" The idea is to use HNEI as arrows - keeping the traditional Vim homerow style - and changing as
" little else as possible. This means JKL are free to use and NEI need new keys.
" - k/K is the new n/N.
" - s/S is the new i/I ["inSert"].
" - j/J is the new e/E ["Jump" to EOW].
" - l/L skip to the beginning and end of lines. Much more intuitive than ^/$.
" - Ctrl-l joins lines, making l/L the veritable "Line" key.
" - r replaces i as the "inneR" modifier [e.g. "diw" becomes "drw"].
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HNEI arrows. Swap 'gn'/'ge' and 'n'/'e'.
  noremap n gj|noremap e gk|noremap i l|noremap gn j|noremap ge k
" In(s)ert. The default s/S is synonymous with cl/cc and is not very useful.
  noremap s i|noremap S I
" Last search.
  noremap k n|noremap K N
" BOL/EOL/Join Lines.
  noremap l ^|noremap L $|noremap <C-l> J
" _r_ = inneR text objects.
  onoremap r i
" EOW.
" TODO: I never use this. Use for something else?
  noremap j e|noremap J E
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other Colemak Arrow-Based Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch tabs.
  nnoremap <C-i> <C-PageDown>|nnoremap <C-h> <C-PageUp>
" Switch panes.
  noremap H <C-w>h|noremap I <C-w>l|noremap N <C-w>j|noremap E <C-w>k
" Moving windows around.
  noremap <C-w>N <C-w>J|noremap <C-w>E <C-w>K|noremap <C-w>I <C-w>L
" High/Low/Mid.
  noremap <C-e> H|noremap <C-n> L|noremap <C-m> M
" Scroll up/down.
  noremap zn <C-y>|noremap ze <C-e>
" Back and forth in jump and changelist.
  nnoremap gh <C-o>|nnoremap gi <C-i>|nnoremap gH g;|nnoremap gI g,


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 set t_Co=256
 set display+=lastline
 set showtabline=1
 set laststatus=2

 syntax enable
 set number
 set hlsearch
 set expandtab
 set tabstop=4
 set softtabstop=4
 set shiftwidth=4
 set autoindent
 set incsearch
 "set showmatch
 
 set wildmenu
 set wildmode=longest,full

 let g:molokai_original = 1
 let g:rehash256 = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 colorscheme molokai
