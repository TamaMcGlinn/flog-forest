
let g:flog_build_log_command_fn = 'flogforest#build_forest_command'

let s:script_dir=expand("<sfile>:p:h")
let g:flog_forest_exec = s:script_dir . "/../git-forest/git-forest"

let g:flog_use_ansi_esc = 0
