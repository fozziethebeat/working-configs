filetype plugin on
filetype indent on
filetype on
syntax on
set background=dark
set showmatch
set textwidth=80
set formatoptions=tqa
set ts=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab
set nocompatible

au BufRead,BufNewFile *.tex set spell
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.json set textwidth=1000000

autocmd BufNewFile *.java call InsertJavaPackage()

function! InsertJavaPackage()
  let dir = getcwd()
  let dir = substitute(dir, "^.*\/edu\/", "edu/", "")
  let dir = substitute(dir, "^.*\/gov\/", "gov/", "")
  let dir = substitute(dir, "\/", ".", "g")
  let dir = "package " . dir . ";"
  let filename = expand("%")
  let filename = substitute(filename, "\.java", "", "")
  "let result = append(0, license)
  let result = append(1, "")
  let result = append(2, dir)
  let result = append(3, "")
  let result = append(4, "")
  let result = append(5, "/**")
  let result = append(6, " * @author Keith Stevens")
  let result = append(7, " */")
  let result = append(8, "public class " . filename . " {")
  let result = append(9, "}")
endfunction

colorscheme relaxedgreen 
let g:EclimXmlValidate=0
let g:github_token = '439cf27efb55ccfd1c7ead691f58785c'
let g:gist_detect_filetype = 1
