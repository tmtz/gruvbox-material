" =============================================================================
" URL: https://github.com/sainnhe/gruvbox-material
" Filename: autoload/lightline/colorscheme/gruvbox_material.vim
" Author: sainnhe
" Email: sainnhe@gmail.com
" License: MIT License
" =============================================================================

"{{{Palette
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:configuration = {}
let s:configuration.background = get(g:, 'gruvbox_material_background', 'medium')
let s:configuration.palette = get(g:, 'gruvbox_material_palette', 'material')

if type(s:configuration.palette) == 4
    let s:configuration.palette = 'mix'
endif

if s:configuration.palette ==# 'material'
    if &background ==# 'dark'
        if s:configuration.background ==# 'hard'
            let s:darker    = [ '#282828', 235 ]
            let s:darkgrey  = [ '#504945', 239 ]
        elseif s:configuration.background ==# 'medium'
            let s:darker    = [ '#32302f', 236 ]
            let s:darkgrey  = [ '#5a524c', 240 ]
        elseif s:configuration.background ==# 'soft'
            let s:darker    = [ '#3c3836', 237 ]
            let s:darkgrey  = [ '#665c54', 241 ]
        endif
        let s:dark      = [ '#282828', 235 ]
        let s:grey      = [ '#a89984', 246 ]
        let s:red       = [ '#ea6962', 167 ]
        let s:green     = [ '#a9b665', 142 ]
        let s:yellow    = [ '#e78a4e', 208 ]
        let s:white     = [ '#ddc7a1', 223 ]
    else
        if s:configuration.background ==# 'hard'
            let s:darker    = [ '#f3eac7', 223 ]
            let s:darkgrey  = [ '#eee0b7', 250 ]
        elseif s:configuration.background ==# 'medium'
            let s:darker    = [ '#f2e5bc', 223 ]
            let s:darkgrey  = [ '#e5d5ad', 250 ]
        elseif s:configuration.background ==# 'soft'
            let s:darker    = [ '#ebdbb2', 223 ]
            let s:darkgrey  = [ '#dac9a5', 250 ]
        endif
        let s:dark      = [ '#ebdbb2', 223 ]
        let s:grey      = [ '#7c6f64', 243 ]
        let s:red       = [ '#ae5858', 88 ]
        let s:green     = [ '#6f8352', 100 ]
        let s:yellow    = [ '#a96b2c', 130 ]
        let s:white     = [ '#4f3829', 241 ]
    endif
elseif s:configuration.palette ==# 'mix'
    if &background ==# 'dark'
        if s:configuration.background ==# 'hard'
            let s:darker    = [ '#282828', 235 ]
            let s:darkgrey  = [ '#504945', 239 ]
        elseif s:configuration.background ==# 'medium'
            let s:darker    = [ '#32302f', 236 ]
            let s:darkgrey  = [ '#5a524c', 240 ]
        elseif s:configuration.background ==# 'soft'
            let s:darker    = [ '#3c3836', 237 ]
            let s:darkgrey  = [ '#665c54', 241 ]
        endif
        let s:dark      = [ '#282828', 235 ]
        let s:grey      = [ '#a89984', 246 ]
        let s:red       = [ '#f2594b', 167 ]
        let s:green     = [ '#b0b846', 142 ]
        let s:yellow    = [ '#e9b143', 208 ]
        let s:white     = [ '#e2cca9', 223 ]
    else
        if s:configuration.background ==# 'hard'
            let s:darker    = [ '#f3eac7', 223 ]
            let s:darkgrey  = [ '#eee0b7', 250 ]
        elseif s:configuration.background ==# 'medium'
            let s:darker    = [ '#f2e5bc', 223 ]
            let s:darkgrey  = [ '#e5d5ad', 250 ]
        elseif s:configuration.background ==# 'soft'
            let s:darker    = [ '#ebdbb2', 223 ]
            let s:darkgrey  = [ '#dac9a5', 250 ]
        endif
        let s:dark      = [ '#ebdbb2', 223 ]
        let s:grey      = [ '#7c6f64', 243 ]
        let s:red       = [ '#ae5858', 88 ]
        let s:green     = [ '#6f8352', 100 ]
        let s:yellow    = [ '#a96b2c', 130 ]
        let s:white     = [ '#514036', 241 ]
    endif
elseif s:configuration.palette ==# 'original'
    if &background ==# 'dark'
        if s:configuration.background ==# 'hard'
            let s:darker    = [ '#282828', 235 ]
            let s:darkgrey  = [ '#504945', 239 ]
        elseif s:configuration.background ==# 'medium'
            let s:darker    = [ '#32302f', 236 ]
            let s:darkgrey  = [ '#5a524c', 240 ]
        elseif s:configuration.background ==# 'soft'
            let s:darker    = [ '#3c3836', 237 ]
            let s:darkgrey  = [ '#665c54', 241 ]
        endif
        let s:dark      = [ '#282828', 235 ]
        let s:grey      = [ '#a89984', 246 ]
        let s:red       = [ '#fb4934', 167 ]
        let s:green     = [ '#b8bb26', 142 ]
        let s:yellow    = [ '#fabd2f', 208 ]
        let s:white     = [ '#ebdbb2', 223 ]
    else
        if s:configuration.background ==# 'hard'
            let s:darker    = [ '#f3eac7', 223 ]
            let s:darkgrey  = [ '#eee0b7', 250 ]
        elseif s:configuration.background ==# 'medium'
            let s:darker    = [ '#f2e5bc', 223 ]
            let s:darkgrey  = [ '#e5d5ad', 250 ]
        elseif s:configuration.background ==# 'soft'
            let s:darker    = [ '#ebdbb2', 223 ]
            let s:darkgrey  = [ '#dac9a5', 250 ]
        endif
        let s:dark      = [ '#ebdbb2', 223 ]
        let s:grey      = [ '#7c6f64', 243 ]
        let s:red       = [ '#ae5858', 88 ]
        let s:green     = [ '#6f8352', 100 ]
        let s:yellow    = [ '#a96b2c', 130 ]
        let s:white     = [ '#3c3836', 241 ]
    endif
endif
"}}}

"{{{Definition
let s:tab_l_fg = s:white
let s:tab_l_bg = s:darkgrey
let s:tab_r_fg = s:dark
let s:tab_r_bg = s:grey
let s:tab_sel_fg = s:dark
let s:tab_sel_bg = s:grey
let s:tab_middle_fg = s:white
let s:tab_middle_bg = s:darker

let s:warningfg = s:dark
let s:warningbg = s:yellow
let s:errorfg = s:dark
let s:errorbg = s:red

let s:normal_l1_fg = s:dark
let s:normal_l1_bg = s:grey
let s:normal_l2_fg = s:white
let s:normal_l2_bg = s:darkgrey
let s:normal_r1_fg = s:dark
let s:normal_r1_bg = s:grey
let s:normal_r2_fg = s:white
let s:normal_r2_bg = s:darkgrey
let s:normal_middle_fg = s:white
let s:normal_middle_bg = s:darker

let s:insert_l1_fg = s:dark
let s:insert_l1_bg = s:green
let s:insert_l2_fg = s:white
let s:insert_l2_bg = s:darkgrey
let s:insert_r1_fg = s:dark
let s:insert_r1_bg = s:green
let s:insert_r2_fg = s:white
let s:insert_r2_bg = s:darkgrey
let s:insert_middle_fg = s:white
let s:insert_middle_bg = s:darker

let s:visual_l1_fg = s:dark
let s:visual_l1_bg = s:red
let s:visual_l2_fg = s:white
let s:visual_l2_bg = s:darkgrey
let s:visual_r1_fg = s:dark
let s:visual_r1_bg = s:red
let s:visual_r2_fg = s:white
let s:visual_r2_bg = s:darkgrey
let s:visual_middle_fg = s:white
let s:visual_middle_bg = s:darker

let s:replace_l1_fg = s:dark
let s:replace_l1_bg = s:yellow
let s:replace_l2_fg = s:white
let s:replace_l2_bg = s:darkgrey
let s:replace_r1_fg = s:dark
let s:replace_r1_bg = s:yellow
let s:replace_r2_fg = s:white
let s:replace_r2_bg = s:darkgrey
let s:replace_middle_fg = s:white
let s:replace_middle_bg = s:darker

let s:inactive_l1_fg = s:white
let s:inactive_l1_bg = s:darkgrey
let s:inactive_l2_fg = s:white
let s:inactive_l2_bg = s:darkgrey
let s:inactive_r1_fg = s:white
let s:inactive_r1_bg = s:darkgrey
let s:inactive_r2_fg = s:white
let s:inactive_r2_bg = s:darkgrey
let s:inactive_middle_fg = s:white
let s:inactive_middle_bg = s:darker
"}}}

"{{{Implementation
let s:p.normal.middle = [ [ s:normal_middle_fg, s:normal_middle_bg ] ]
let s:p.normal.left = [ [ s:normal_l1_fg, s:normal_l1_bg, 'bold' ], [ s:normal_l2_fg, s:normal_l2_bg ] ]
let s:p.normal.right = [ [ s:normal_r1_fg, s:normal_r1_bg, 'bold' ], [ s:normal_r2_fg, s:normal_r2_bg ] ]

let s:p.insert.middle = [ [ s:insert_middle_fg, s:insert_middle_bg ] ]
let s:p.insert.left = [ [ s:insert_l1_fg, s:insert_l1_bg, 'bold' ], [ s:insert_l2_fg, s:insert_l2_bg ] ]
let s:p.insert.right = [ [ s:insert_r1_fg, s:insert_r1_bg, 'bold' ], [ s:insert_r2_fg, s:insert_r2_bg ] ]

let s:p.visual.middle = [ [ s:visual_middle_fg, s:visual_middle_bg ] ]
let s:p.visual.left = [ [ s:visual_l1_fg, s:visual_l1_bg, 'bold' ], [ s:visual_l2_fg, s:visual_l2_bg ] ]
let s:p.visual.right = [ [ s:visual_r1_fg, s:visual_r1_bg, 'bold' ], [ s:visual_r2_fg, s:visual_r2_bg ] ]

let s:p.replace.middle = [ [ s:replace_middle_fg, s:replace_middle_bg ] ]
let s:p.replace.left = [ [ s:replace_l1_fg, s:replace_l1_bg, 'bold' ], [ s:replace_l2_fg, s:replace_l2_bg ] ]
let s:p.replace.right = [ [ s:replace_r1_fg, s:replace_r1_bg, 'bold' ], [ s:replace_r2_fg, s:replace_r2_bg ] ]

let s:p.inactive.left = [ [ s:inactive_l1_fg, s:inactive_l1_bg ], [ s:inactive_l2_fg, s:inactive_l2_bg ] ]
let s:p.inactive.middle = [ [ s:inactive_middle_fg, s:inactive_middle_bg ] ]
let s:p.inactive.right = [ [ s:inactive_r1_fg, s:inactive_r1_bg ], [ s:inactive_r2_fg, s:inactive_r2_bg ] ]

let s:p.tabline.left = [ [ s:tab_l_fg, s:tab_l_bg] ]
let s:p.tabline.right = [ [ s:tab_r_fg, s:tab_r_bg] ]
let s:p.tabline.tabsel = [ [ s:tab_sel_fg, s:tab_sel_bg, 'bold' ] ]
let s:p.tabline.middle = [ [ s:tab_middle_fg, s:tab_middle_bg] ]

let s:p.normal.error = [ [ s:errorfg, s:errorbg ] ]
let s:p.normal.warning = [ [ s:warningfg, s:warningbg ] ]


if get(g:, 'gruvbox_material_lightline_disable_bold', 0)
    let s:p.normal.left = [ [ s:normal_l1_fg, s:normal_l1_bg ], [ s:normal_l2_fg, s:normal_l2_bg ] ]
    let s:p.normal.right = [ [ s:normal_r1_fg, s:normal_r1_bg ], [ s:normal_r2_fg, s:normal_r2_bg ] ]
    let s:p.insert.left = [ [ s:insert_l1_fg, s:insert_l1_bg ], [ s:insert_l2_fg, s:insert_l2_bg ] ]
    let s:p.insert.right = [ [ s:insert_r1_fg, s:insert_r1_bg ], [ s:insert_r2_fg, s:insert_r2_bg ] ]
    let s:p.visual.left = [ [ s:visual_l1_fg, s:visual_l1_bg ], [ s:visual_l2_fg, s:visual_l2_bg ] ]
    let s:p.visual.right = [ [ s:visual_r1_fg, s:visual_r1_bg ], [ s:visual_r2_fg, s:visual_r2_bg ] ]
    let s:p.replace.left = [ [ s:replace_l1_fg, s:replace_l1_bg ], [ s:replace_l2_fg, s:replace_l2_bg ] ]
    let s:p.replace.right = [ [ s:replace_r1_fg, s:replace_r1_bg ], [ s:replace_r2_fg, s:replace_r2_bg ] ]
    let s:p.tabline.tabsel = [ [ s:tab_sel_fg, s:tab_sel_bg ] ]
endif
"}}}

let g:lightline#colorscheme#gruvbox_material#palette = lightline#colorscheme#flatten(s:p)
