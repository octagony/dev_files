if status is-interactive
	#ZOXIDE INIT
	zoxide init fish | source
	
	#ALIASES
	alias ins="paru -S"
	alias del="sudo pacman -Rcsn"
	alias c="clear; echo; fastfetch; echo"
	alias ll="exa --long -all --icons"
	alias ls="exa --icons"
	alias cat="bat --theme=\"Catppuccin-mocha\""
	alias du="sudo dust"
	alias lg="lazygit"
	alias tre="tre -e"

	#NVIM ALIASES
	alias vi="nvim"
	alias svi="sudo nvim"
	alias vis='nvim "+set si"'
	
	#YT-DLP ALIAS
	alias yd="yt-dlp"

	#TMUX ALIASES
	alias t="tmux"
	alias tn="tmux new -s"
	alias ta="tmux attach"
	alias td="tmux detach"

   # NAVIGATION
   alias ..='cd ..'
   alias ...='cd ../..'
   alias .3='cd ../../..'
   alias .4='cd ../../../..'
   alias .5='cd ../../../../..'

	#SETS
	set -gx EDITOR nvim
	set -x MANPAGER "sh -c 'col -b | bat -l man -p'"

	#REMOVE STARTUP MESSAGE
	set fish_greeting 
	echo ""
	fastfetch	
	echo ""
end
