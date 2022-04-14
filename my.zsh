_pwd=$(cd "$(dirname $0)" && pwd)

[ ! -d "${_pwd}/site-functions" ] && mkdir "${_pwd}/site-functions"

if [ ! -f "${_pwd}/site-functions/prompt_spaceship_setup" ]; then
  [ -f "${_pwd}/prompt/spaceship.zsh" ] && ln -sf "../prompt/spaceship.zsh" "${_pwd}/site-functions/prompt_spaceship_setup"
fi

source "${_pwd}/syntax-highlighting/zsh-syntax-highlighting.zsh"
source "${_pwd}/autosuggestions/zsh-autosuggestions.zsh"
fpath=( "${_pwd}/site-functions" "${_pwd}/completions/src" $fpath )
autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit

prompt spaceship

