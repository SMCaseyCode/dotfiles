#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval $(keychain --eval --quiet ~/.ssh/git-key)

export EDITOR='nvim'

alias commands='cat $HOME/Documents/commands.md'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias y='yazi'
alias vim='nvim'

PS1='[\u@\h \W]\$ '
alias yt-resolve='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" --postprocessor-args "ffmpeg:-c:v dnxhd -profile:v dnxhr_hq -pix_fmt yuv422p -c:a pcm_s16le" --merge-output-format mov'
