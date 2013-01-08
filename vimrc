call pathogen#infect()

filetype indent plugin on
syntax enable		" Enable syntax
set hlsearch " Highlight searches

" Solarized Colorscheme
set background=dark
let g:solarized_termcolors=256
let g:solarized_contrast="normal"    "default value is normal
colorscheme solarized	" Set colorscheme

set ls=2 " List filename at bottem of screen
set ruler " Show current line and column number, and percentage in buffer
set number " Show line numbers
set wildmode=list:longest " Autocomplete file open
set diffopt+=iwhite " Remove whitespace from vimdiff

set cursorline		" Highlight currentline
"set cursorcolumn	" Highlight current column
"hi cursorline term=bold cterm=bold guibg=Grey40

" Change Tab to Spaces
set tabstop=3
set shiftwidth=3
set expandtab

let mapleader = "," " Change default leader key
"let g:EasyMotion_leader_key = '<Leader>'
map <Leader>e :NERDTreeToggle<CR> " Shortcut for NERDTreeToggle

" Fugitive settings
"  Display current branch
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" define local paths for force.com plugin
if has('gui') " do not use on headless machines
   if has("unix")
      " g:apex_backup_folder - /path/to/folder where current project source
      " is backed up before refresh from SFDC
      if !exists("g:apex_backup_folder")
         let g:apex_backup_folder="/Users/thai/.ant/backup"
      endif
      " every time when ApexDeploy is called we copy files (to be fed to ANT 
      " job and deployed to sfdc) into /path/to/folder defined by
      " "g:apex_temp_folder
      if !exists("g:apex_temp_folder")
         let g:apex_temp_folder="/Users/thai/.ant/vim-deployment"
      endif
      " ANT error log file name which is stored in "g:apex_temp_folder
      if !exists("g:apex_deployment_error_log")
         let g:apex_deployment_error_log="vim-deployment-error.log"
      endif
      " path to folder with *.property files which contain SFDC orgs access
      " details
      if !exists("g:apex_properties_folder")
         let g:apex_properties_folder="/media/truecrypt1"
      endif
   elseif has("win32")
      if !exists("g:apex_backup_folder")
         let g:apex_backup_folder="c:\\temp\\apex\\backup"
      endif
      if !exists("g:apex_temp_folder")
         let g:apex_temp_folder="c:\\temp\\apex\\gvim-deployment"
      endif
      if !exists("g:apex_deployment_error_log")
         let g:apex_deployment_error_log="gvim-deployment-error.log"
      endif
      if !exists("g:apex_properties_folder")
         let g:apex_properties_folder="t:"
      endif
   endif	
   if has("win32")	|| has("win64")
      let g:apex_binary_tee = "d:\\bin\\UnixUtils\\tee.exe"
      let g:apex_binary_touch = "d:\\bin\\UnixUtils\\touch.exe"
   endif	
endif	
