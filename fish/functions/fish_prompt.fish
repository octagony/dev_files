function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end


    printf '  '
    echo -n (set_color -o "#cba6f7") 
    printf (prompt_pwd)
    echo -n (set_color -o "#f38ba8") 
    echo -n (git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')' ' 
    printf '\n  '
    
    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end
    echo -n (set_color -o "#cba6f7")'❯' 
    echo -n (set_color -o "#94e2d5")'❯ ' 
    set_color "#cdd6f4"
end
