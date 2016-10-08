autoload -Uz compinit promptinit
compinit
promptinit

case $TERM in
	xterm*)
	bindkey "^[[H" beginning-of-line
	bindkey "^[[F" end-of-line
	bindkey "\e[3~" delete-char
	bindkey '^[[5~' history-beginning-search-backward
	bindkey '^[[6~' history-beginning-search-forward
	bindkey '^[[2~' overwrite-mode
	bindkey "^[[1;5C" forward-word
	bindkey "^[[1;5D" backward-word
;;
esac

source $HOME/.aliases

prompt walters
