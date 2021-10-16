function! flogforest#build_forest_command() abort
    let l:state = flog#get_state()

    if l:state.no_graph
        return flog#build_log_command()
    endif

    let l:command = 'export GIT_DIR='
    let l:command .= shellescape(flog#get_fugitive_git_dir())
    let l:command .= ' NO_PRINT_REFS=true'
    let l:command .= '; '

    let l:command .= g:flog_forest_exec . ' --style=10'
    let l:command .= substitute(flog#build_log_args(), ' --graph', '', '')
    let l:command .= ' -- '
    let l:command .= flog#build_log_paths()

    return l:command
endfunction
