# Generates the neccisary symlinks between the git repo and dotfiles. Must be run from the git repo directory.
# The git repo directory must be placed as ~/hyprland_dotfiles

ln -sf ~/hyprland_dotfiles/rofi/ ~/.config/
ln -sf ~/hyprland_dotfiles/kitty/ ~/.config/
ln -sf ~/hyprland_dotfiles/hypr/ ~/.config/
ln -sf ~/hyprland_dotfiles/waybar ~/.config/
ln -sf ~/hyprland_dotfiles/scripts ~/.config/
