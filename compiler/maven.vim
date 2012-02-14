" Compiler: maven
" Author: Michael Schmitz <michael@schmitztech.com>
" Last Change: 10/27/2011

if exists("current_compiler")
    finish
endif
let current_compiler = "maven"

set makeprg=mvn\ -q\ compile
set errorformat=\[ERROR]\ %f:[%l\\,%v]\ %m

