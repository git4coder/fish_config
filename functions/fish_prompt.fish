# 判断是否是git仓库的工具函数
function is_git_repo --description 'Check if directory is a repository'
    test -d .git
    or command git rev-parse --git-dir >/dev/null ^/dev/null
end

# PS1
function fish_prompt --description 'Write out the prompt'
    set last_status $status

    set -l os (uname -s)
    if test "$os" = "Darwin"
        set -g __fish_git_prompt_show_informative_status 1
    end

    if not test $last_status -eq 0
        set status_color (set_color red)
    else
        set status_color (set_color normal)
    end

    if set --query SSH_TTY
        set fish_color_host red
    end

    if test "$USER" = "root"
        set user_info (set_color red)"$USER"(set_color normal)" on "
        set prompt_sign $status_color' # '
    else
        if test $last_status -eq 0
            set prompt_sign (set_color red)' ❯'(set_color yellow)'❯'(set_color green)'❯ '
        else
            set prompt_sign $status_color' ❯❯❯ '
        end
    end

    set path (set_color 2ca7f8)(location)

    echo -ne "$user_info$path$prompt_sign"

    set_color normal
end

function fish_right_prompt
    set -g __fish_git_prompt_showupstream "informative"
    set -g __fish_git_prompt_showdirtystate 1
    set -g __fish_git_prompt_showstashstate 1
    set -g __fish_git_prompt_showuntrackedfiles 1
    set -g __fish_git_prompt_char_stateseparator " "
    set -g __fish_git_prompt_char_upstream_prefix " "
    # set -g __fish_git_prompt_showcolorhints 1

    set git_info
    if is_git_repo
        set branch (git branch | grep \* | sed 's/* //')
        if test "$branch" = "master"
          set color (set_color red)
        else
          set color (set_color yellow)
        end
        if set -q __fish_git_prompt_show_informative_status
            set file_status (__fish_git_prompt "%s")
            set git_info "$color$file_status"
        else
            __fish_git_prompt >/dev/null 2>&1
            set upstream (__fish_git_prompt_show_upstream)
            set file_status (__fish_git_prompt_informative_status)
            set git_info "$color$branch$__fish_git_prompt_char_stateseparator$file_status$upstream"
        end
    end

    set -l os (uname -s)
    if test "$os" = "Darwin"
        set -g __fish_git_prompt_show_informative_status 1
        set -g __fish_git_prompt_char_cleanstate '✔'
        set -g __fish_git_prompt_char_dirtystate '*'
        set -g __fish_git_prompt_char_invalidstate '#'
        set -g __fish_git_prompt_char_stagedstate '+'
        set -g __fish_git_prompt_char_stashstate '$'
        set -g __fish_git_prompt_char_stateseparator ' '
        set -g __fish_git_prompt_char_untrackedfiles '%'
        set -g __fish_git_prompt_char_upstream_ahead '>'
        set -g __fish_git_prompt_char_upstream_behind '<'
        set -g __fish_git_prompt_char_upstream_diverged '<>'
        set -g __fish_git_prompt_char_upstream_equal '='
        set -g __fish_git_prompt_char_upstream_prefix ''
    end
    if set -q HTTP_PROXY
        if test "$os" = "Darwin"
            set proxy (set_color normal)"🚀 "
        else
            set proxy (set_color normal)"p "
        end
    end

    echo -n "$proxy$git_info"
    set_color normal
end

