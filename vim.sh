echo "Intalling vim-plug ..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

[-f ~/.vimrc.bak] && rm ~/.vimrc.bak
[-f ~/.vimrc] && mv ~/.vimrc ~/.vimrc.bak

cat > ~/.vimrc <<_EOF_
    call plug#begin('~/.vim/plugged')
    Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
    Plug 'fatih/molokai'
    call plug#end()

    " set foldmethod=syntax
    set backspace=indent,eol,start
    set number                  " 显示行号
    set cursorline              " 突出显示当前行
    set tabstop=4               " Tab键的宽度

     " 统一缩进为4
    set softtabstop=4
    set shiftwidth=4

    " golang highlight
    let g:go_highlight_types = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_function_calls = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_extra_types = 1


    "let g:rehash256 = 1
    "let g:molokai_original = 1
    colorscheme molokai
_EOF_
echo "start vim and execute :PlugInstall "
