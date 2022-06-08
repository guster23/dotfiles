typeset -a plugins
typeset -A p0 p1 p2 p3 p4 p5 p6 p7 p8 p9

p0=(
  [folder]=powerlevel10k
  [url]=https://github.com/romkatv/powerlevel10k.git
  [sourceFile]=powerlevel10k.zsh-theme
)

p1=(
  [folder]=zsh-syntax-highlighting
  [url]=https://github.com/zsh-users/zsh-syntax-highlighting.git
  [sourceFile]=zsh-syntax-highlighting.zsh
)

p2=(
  [folder]=zsh-autosuggestions
  [url]=https://github.com/zsh-users/zsh-autosuggestions.git
  [sourceFile]=zsh-autosuggestions.zsh
)

plugins=(p0 p1 p2)
BASE_PLUGIN_DIR=~/.dotfiles/zsh_plugins

if [[ ! -d $BASE_PLUGIN_DIR ]]; then
  mkdir ${BASE_PLUGIN_DIR}
fi

for plugin in $plugins; do
  plugin_folder=$BASE_PLUGIN_DIR/${${(P)plugin}[folder]}
  source_file=$plugin_folder/${${(P)plugin}[sourceFile]}

  if [[ ! -d $plugin_folder ]]; then
    git clone --depth 1 --recursive ${${(P)plugin}[url]} $plugin_folder
  fi
   
  [[ ! -f $source_file ]] || source $source_file
done
unset plugins
unset p0 p1 p2 p3 p4 p5 p6 p7 p8 p9


autoload -Uz compinit
compinit
PS1='%F{green}%n@%m%f %F{blue}%~%f%# '

[[ ! -f ~/.dotfiles/.p10k.zsh ]] || source ~/.dotfiles/.p10k.zsh
alias updatePlugings="rm -rf ${BASE_PLUGIN_DIR} && exec zsh"