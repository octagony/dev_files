if status is-interactive
	#ZOXIDE INIT
	zoxide init fish | source
	
	#ALIASES
	alias ins="sudo nala install"
	alias del="sudo nala remove"
	alias upd="sudo nala update && sudo nala upgrade"
	alias ser="nala search"
	alias c="clear; echo; fastfetch; echo"
	alias ll="exa --long -all --icons"
	alias ls="exa --icons"
	alias cat="batcat --theme="Catpuccin-mocha""
	alias du="sudo dust"
	alias lg="lazygit"
	alias tre="tre -e"
	alias fd="fdfind"
	alias code="codium"

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

	#ZELLIJ ALIASES
	alias zl="zellij"
	alias zn="zellij -s"
	alias zt="zellij attach"
	alias zs="zellij list-sessions"
	alias zk="zellij kill-all-sessions"

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

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
