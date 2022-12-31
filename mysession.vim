let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/workspace/myapp
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +2 src/main/java/com/example/myapp/model/Department.java
badd +37 pom.xml
badd +1 ~/.config/nvim/lua/custom/init.lua
badd +26 src/main/resources/templates/layout/layout.html
badd +43 ~/.config/nvim/lua/custom/mappings/init.lua
badd +7 ~/.config/nvim/lua/custom/script/init.lua
badd +10 ~/.config/nvim/lua/custom/plugins/configs/lspconfig.lua
badd +112 ~/.config/nvim/lua/custom/plugins/init.lua
badd +1 ~/.config/nvim/lua/custom/plugins/configs/prettier.lua
badd +48 src/main/resources/templates/index.html
badd +1 ~/.config/nvim/lua/custom/plugins/configs/null-ls.lua
badd +1 src/main/resources/templates/form.html
badd +52 src/main/java/com/example/myapp/controller/EmployeeController.java
badd +69 ~/workspace/test.html
badd +1 src/main/resources/application.properties
badd +22 ~/.config/nvim/lua/custom/plugins/override/mason-setup.lua
badd +12 ~/.config/nvim/lua/custom/plugins/override/treesitter-setup.lua
badd +1 target/classes/templates/fragments/sidebar.html
badd +56 target/classes/templates/form.html
badd +1 ~/spring-boot-intro-2.7/spring-jpa3/mvnw
badd +25 ~/spring-boot-intro-2.7/spring-jpa3/src/main/resources/templates/fragments/sidebar.html
badd +51 ~/spring-boot-intro-2.7/spring-jpa3/src/main/resources/templates/form.html
badd +74 ~/spring-boot-intro-2.7/spring-jpa3/src/main/resources/templates/layout/layout.html
badd +76 target/classes/templates/layout/layout.html
badd +1 ~/spring-boot-intro-2.7/spring-jpa3/src/main/resources/application.properties
badd +1 ~/spring-boot-intro-2.7/spring-jpa3/src/main/java/com/example/demo/controller/EmployeeController.java
badd +1 src/main/java/com/example/myapp/config/DataLoader.java
badd +1 ~/spring-boot-intro-2.7/spring-jpa3/src/main/java/com/example/demo/config/DataLoader.java
badd +1 ~/spring-boot-intro-2.7/spring-jpa3/src/main/java/com/example/demo/model/Department.java
badd +1 src/main/java/com/example/myapp/model/Employee.java
badd +1 ~/spring-boot-intro-2.7/spring-jpa3/src/main/java/com/example/demo/model/Employee.java
badd +1 src/main/java/com/example/myapp/repository/DepartmentRepository.java
badd +1 ~/spring-boot-intro-2.7/spring-jpa3/src/main/java/com/example/demo/repository/DepartmentRepository.java
badd +1 src/main/java/com/example/myapp/repository/EmployeeRepository.java
badd +5 ~/spring-boot-intro-2.7/spring-jpa3/src/main/java/com/example/demo/repository/EmployeeRepository.java
badd +2 src/main/resources/templates/fragments/sidebar.html
badd +36 src/main/resources/static/css/app.css
badd +52 ~/spring-boot-intro-2.7/spring-jpa3/src/main/resources/static/css/app.css
badd +1 NERD_tree_4
badd +1 ~/spring-boot-intro-2.7/spring-jpa3/src/main/resources/templates/index.html
badd +51 target/classes/templates/index.html
badd +1 ~/workspace/myapp
argglobal
%argdel
set lines=38 columns=174
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit src/main/resources/static/css/app.css
argglobal
balt src/main/resources/templates/index.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 36 - ((18 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 36
normal! 026|
tabnext
edit ~/spring-boot-intro-2.7/spring-jpa3/src/main/resources/templates/index.html
argglobal
balt ~/spring-boot-intro-2.7/spring-jpa3/src/main/resources/static/css/app.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 53 - ((18 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 53
normal! 0
tabnext
edit ~/.config/nvim/lua/custom/plugins/configs/lspconfig.lua
argglobal
balt ~/.config/nvim/lua/custom/plugins/configs/null-ls.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 10 - ((9 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 018|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
