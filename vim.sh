ehco "Intalling vim-plug ..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/plugged && cd ~/.vim/plugged && git clone https://github.com/fatih/molokai.git

rm ~/.vimrc.bak
mv ~/.vimrc ~/.vimrc.bak

cat > ~/.vimrc <<_EOF_
	set nocompatible
	set ruler
	set showmatch
	set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
	set termencoding=utf-8
	set encoding=utf-8
	let g:go_version_warning = 0
	call plug#begin('~/.vim/plugged')
	Plug 'fatih/molokai'
	call plug#end()

	set number						" 显示行号
	set cursorline					" 突出显示当前行
	set tabstop=4					" Tab键的宽度

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

	" python highlight
	" let python_highlight_all = 1


	"let g:rehash256 = 1
	"let g:molokai_original = 1
	colorscheme molokai
_EOF_
echo "start vim and execute :PlugInstall "
