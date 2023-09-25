" =============================================================================
" Filename: autoload/lightline/colorscheme/custom.vim
" Author: UrielCuriel
" License: MIT license
" Last Change: 2023-06-27 09:53:00
" =============================================================================

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:purple = ['#a277ff', 'NONE']
let s:dark_purple = ['#29263c', 'NONE']
let s:green = ['#61ffca', 'NONE']
let s:orange = ['#ffca85', 'NONE']
let s:pink = ['#f694ff', 'NONE']
let s:blue = ['#82e2ff', 'NONE']
let s:red = ['#ff6767', 'NONE']
let s:white = ['#edecee', 'NONE']
let s:gray = ['#4d4d4d', 'NONE']
let s:black = ['#1c1b22', 'NONE']

let s:p.normal.left = [ [ s:black, s:purple ], [ s:white, s:black ] ]
let s:p.normal.middle = [ [ s:white, s:dark_purple ] ]
let s:p.normal.right = [ [ s:white, s:black ], [ s:white, s:black ] ]
let s:p.normal.warning = [ [ s:black, s:red ] ]
let s:p.normal.error = [ [ s:black, s:red ] ]

let s:p.inactive.left =  [ [ s:black, s:purple ], [ s:white, s:black ] ]
let s:p.inactive.middle = [ [ s:white, s:black ] ]
let s:p.inactive.right = [ [ s:white, s:black ], [ s:white, s:black ] ]

let s:p.insert.left = [ [ s:black, s:pink ], [ s:white, s:black ] ]
let s:p.replace.left = [ [ s:black, s:orange ], [ s:white, s:black ] ]
let s:p.visual.left = [ [ s:black, s:green ], [ s:white, s:black ] ]

let s:p.tabline.left = [ [ s:white, s:gray ] ]
let s:p.tabline.middle = [ [ s:white, s:black ] ]
let s:p.tabline.right = [ [ s:white, s:gray ] ]
let s:p.tabline.tabsel = [ [ s:black, s:green ] ]

let g:lightline#colorscheme#aura#palette = lightline#colorscheme#flatten(s:p)

