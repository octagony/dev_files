function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    printf '  '
    echo -n (set_color -o "#cba6f7")(prompt_pwd)
    
    printf '\n  '
    
    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end
    echo -n (set_color -o "#cba6f7")'❯' 
    echo -n (set_color -o "#94e2d5")'❯ ' 
    set_color "#cdd6f4"
end
