# ln -s ~/.dotfiles/.zshrc ~/.zshrc

# Download plugins
if [[ ! -e ~/.zsh/powerlevel10k ]]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.dotfiles/powerlevel10k
fi

if [[ ! -e ~/.zsh/zsh-syntax-highlighting ]]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.dotfiles/zsh-syntax-highlighting
fi

if [[ ! -e ~/.zsh/zsh-autosuggestions ]]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.dotfiles/zsh-autosuggestions
fi

autoload -Uz compinit
compinit
PS1='%F{green}%n@%m%f %F{blue}%~%f%# '

source ~/.dotfiles/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.dotfiles/.p10k.zsh ]] || source ~/.dotfiles/.p10k.zsh

source ~/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.dotfiles/zsh-autosuggestions/zsh-autosuggestions.zsh

alias updatePlugings="rm -rf ~/.dotfiles/powerlevel10k && rm -rf  ~/.dotfiles/zsh-syntax-highlighting && exec zsh"