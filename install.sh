# alacritty
ln -sf $HOME/.dotfiles/homelab-dotfiles/home/alacritty $HOME/.config/alacritty
# alacritty config folder
git clone https://github.com/alacritty/alacritty-theme $HOME/.dotfiles/homelab-dotfiles/home/alacritty/themes
ln -sf $HOME/.dotfiles/homelab-dotfiles/home/alacritty/themes $HOME/.config/alacritty/themes

# yabai
ln -s $HOME/.dotfiles/homelab-dotfiles/home/yabai $HOME/.config/yabai
chmod +x ~/.yabairc

ln -sf $HOME/.dotfiles/homelab-dotfiles/home/aerospace $HOME/.config/aerospace
ln -sf $HOME/.dotfiles/homelab-dotfiles/home/starship $HOME/.config/starship
ln -sf $HOME/.dotfiles/homelab-dotfiles/home/borders $HOME/.config/borders

#cp ./config/pk10/.p10k.zsh ~/
ln -sf  $HOME/.dotfiles/homelab-dotfiles/home/hammerspoon $HOME/.hammerspoon
ln -sf  $HOME/.dotfiles/homelab-dotfiles/home/steampipe $HOME/.steampipe
ln -sf  $HOME/.dotfiles/homelab-dotfiles/home/git-scripts/ $HOME/.config/git-scripts
ln -sf  $HOME/.dotfiles/homelab-dotfiles/home/git $HOME/.git

steampipe plugin install aws
steampipe plugin install csv
steampipe plugin install kubernetes
steampipe plugin install jira
steampipe plugin install cloudflare