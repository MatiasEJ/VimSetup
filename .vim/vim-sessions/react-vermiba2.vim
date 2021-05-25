let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <Plug>(coc-snippets-expand-jump) coc#_insert_key('request', 'snippets-expand-jump', 1)
inoremap <silent> <expr> <Plug>(coc-snippets-expand) coc#_insert_key('request', 'snippets-expand', 1)
inoremap <silent> <expr> <BS> coc#_insert_key('request', '71e0409b-a28a-11ea-92f4-c77f1687053d')
inoremap <silent> <Plug>CocRefresh =coc#_complete()
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\"
inoremap <silent> <expr> <C-Space> coc#refresh()
map! <S-Insert> *
map  :NERDTreeToggle
map  <Plug>(ctrlp)
vmap  "*d
nnoremap  sr :so ~/.vim/vim-sessions/*.vim<BS><BS><BS><BS><BS>
nnoremap  ss :mks! ~/.vim/vim-sessions/*.vim<BS><BS><BS><BS><BS>
nnoremap  u :UndotreeShow
nnoremap  l :wincmd l
nnoremap  k :wincmd k
nnoremap  j :wincmd j
nnoremap  h :wincmd h
vnoremap J :m '>+1gv=gv
vnoremap K :m '<-2gv=gv
nnoremap \pv :wincmd v| :Ex | :vertical resize 30
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>(coc-snippets-select) :call coc#rpc#notify('doKeymap', ['snippets-select'])
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
onoremap <silent> <Plug>(coc-classobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, '', ['Interface', 'Struct', 'Class']])
onoremap <silent> <Plug>(coc-classobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, '', ['Interface', 'Struct', 'Class']])
vnoremap <silent> <Plug>(coc-classobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, visualmode(), ['Interface', 'Struct', 'Class']])
vnoremap <silent> <Plug>(coc-classobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, visualmode(), ['Interface', 'Struct', 'Class']])
onoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, '', ['Method', 'Function']])
onoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, '', ['Method', 'Function']])
vnoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, visualmode(), ['Method', 'Function']])
vnoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, visualmode(), ['Method', 'Function']])
nnoremap <silent> <Plug>(coc-cursors-position) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'position', 'n'])
nnoremap <silent> <Plug>(coc-cursors-word) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'word', 'n'])
vnoremap <silent> <Plug>(coc-cursors-range) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'range', visualmode()])
nnoremap <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <Plug>(coc-float-jump) :call       coc#util#float_jump()
nnoremap <Plug>(coc-float-hide) :call       coc#util#float_hide()
nnoremap <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <Plug>(coc-references) :call       CocActionAsync('jumpReferences')
nnoremap <Plug>(coc-type-definition) :call       CocActionAsync('jumpTypeDefinition')
nnoremap <Plug>(coc-implementation) :call       CocActionAsync('jumpImplementation')
nnoremap <Plug>(coc-declaration) :call       CocActionAsync('jumpDeclaration')
nnoremap <Plug>(coc-definition) :call       CocActionAsync('jumpDefinition')
nnoremap <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction-line) :call       CocActionAsync('codeAction',         'n')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction',         '')
vnoremap <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction',         visualmode())
vnoremap <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected',     visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocAction('rangeSelect',     '', v:true)
vnoremap <Plug>(coc-range-select-backward) :call       CocAction('rangeSelect',     visualmode(), v:false)
vnoremap <Plug>(coc-range-select) :call       CocAction('rangeSelect',     visualmode(), v:true)
map <C-P> <Plug>(ctrlp)
nnoremap <silent> <Plug>(ctrlp) :CtrlP
nnoremap <Right> :vertical resize +2
nnoremap <Left> :vertical resize -2
nnoremap <Down> :resize -2
nnoremap <Up> :resize +2 
map <C-N> :NERDTreeToggle
vmap <C-X> "*d
vmap <C-Del> "*d
vmap <S-Del> "*d
vmap <C-Insert> "*y
vmap <S-Insert> "-d"*P
nmap <S-Insert> "*P
inoremap <silent> <expr> " coc#_insert_key('request', '71e04099-a28a-11ea-92f4-c77f1687053d')
inoremap <silent> <expr> ' coc#_insert_key('request', '71e04098-a28a-11ea-92f4-c77f1687053d')
inoremap <silent> <expr> ( coc#_insert_key('request', '71e04090-a28a-11ea-92f4-c77f1687053d')
inoremap <silent> <expr> ) coc#_insert_key('request', '71e04091-a28a-11ea-92f4-c77f1687053d')
inoremap <silent> <expr> < coc#_insert_key('request', '71e04096-a28a-11ea-92f4-c77f1687053d')
inoremap <silent> <expr> > coc#_insert_key('request', '71e04097-a28a-11ea-92f4-c77f1687053d')
inoremap <silent> <expr> [ coc#_insert_key('request', '71e04092-a28a-11ea-92f4-c77f1687053d')
inoremap <silent> <expr> ] coc#_insert_key('request', '71e04093-a28a-11ea-92f4-c77f1687053d')
inoremap <silent> <expr> ` coc#_insert_key('request', '71e0409a-a28a-11ea-92f4-c77f1687053d')
inoremap <silent> <expr> { coc#_insert_key('request', '71e04094-a28a-11ea-92f4-c77f1687053d')
inoremap <silent> <expr> } coc#_insert_key('request', '71e04095-a28a-11ea-92f4-c77f1687053d')
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set cmdheight=2
set expandtab
set fileencodings=utf-8
set guifont=Consolas:h11
set helplang=es
set hidden
set hlsearch
set incsearch
set langmap=es
set pyxversion=3
set ruler
set runtimepath=~/vimfiles,~\\.vim\\plugged\\gruvbox,~\\.vim\\plugged\\ctrlp.vim,~\\.vim\\plugged\\nerdtree,~\\.vim\\plugged\\coc.nvim,~\\.vim\\plugged\\vim-polyglot,~\\.vim\\plugged\\undotree,~\\.vim\\plugged\\AutoComplPop,C:\\Program\ Files\ (x86)\\Vim/vimfiles,C:\\Program\ Files\ (x86)\\Vim\\vim82,C:\\Program\ Files\ (x86)\\Vim/vimfiles/after,~\\.vim\\plugged\\vim-polyglot\\after,~/vimfiles/after,~\\AppData\\Local\\coc\\extensions\\node_modules\\coc-snippets
set shiftwidth=2
set smartindent
set softtabstop=2
set noswapfile
set tabstop=2
set undodir=~/.vim/undodir
set undofile
set updatetime=300
set wildmenu
set window=34
set winheight=999
set winminheight=0
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd C:\Windows\SysWOW64
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
set stal=2
tabnew
tabrewind
edit e:\proyectos\vermiba2\src\App.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal completeslash=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0.,0{,0},0),0],0?,0*,0,,!^F,:,<:>,o,O,e,<>>,=*/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 0
lcd E:\proyectos\vermiba2\src
tabnext
edit E:\proyectos\vermiba2\src\Components\Calcu.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal completeslash=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0.,0{,0},0),0],0?,0*,0,,!^F,:,<:>,o,O,e,<>>,=*/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd E:\proyectos\vermiba2\src\Components
tabnext 1
set stal=1
badd +1 e:\proyectos\vermiba2\src\App.js
badd +0 E:\proyectos\vermiba2\src\Components\Calcu.js
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=999 winwidth=20 shortmess=filnxtToOS
set winminheight=0 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
