install:
	stow -t ~ info
	stow -t ~ vim
	stow -t ~ gdb
	stow -t ~ tmux
	stow -t ~ git
	stow -t ~ font
	stow -t ~/.config bash
	stow -t ~/.config alacritty
	stow -t ~/.config mako 
	stow -t ~/.config nvim
	stow -t ~/.config sway
	stow -t ~/.config waybar
	stow -t ~/.config py3status
	stow -t ~/.config wofi
	stow -t ~/.config i3
	stow -t ~/.config ibus
	stow -t ~/.config xsettingsd
	stow -t ~/.config rg
	stow -t ~/.config systemd
	stow -t ~/.config environment.d
	stow -t ~/.config clang-format
	stow -t ~/.config gtk-3.0
	stow -t ~/.config gtk-4.0
	stow -t ~/.config swaylock
	stow -t ~/.config zathura
	stow -t ~/.config clangd
	stow -t ~/.config fcitx5
	stow -t ~/.config i3status
	stow -t ~/.config rofi
	stow -t ~ npm
	echo 'source ~/.config/bash/config.sh' >> ~/.bashrc

uninstall:
	stow -t ~ -D npm
	stow -t ~ -D info
	stow -t ~ -D vim
	stow -t ~ -D gdb
	stow -t ~ -D tmux
	stow -t ~ -D git
	stow -t ~ -D font
	stow -t ~/.config -D bash
	stow -t ~/.config -D alacritty
	stow -t ~/.config -D mako 
	stow -t ~/.config -D nvim
	stow -t ~/.config -D sway
	stow -t ~/.config -D waybar
	stow -t ~/.config -D py3status
	stow -t ~/.config -D wofi
	stow -t ~/.config -D i3
	stow -t ~/.config -D ibus
	stow -t ~/.config -D xsettingsd
	stow -t ~/.config -D rg
	stow -t ~/.config -D systemd
	stow -t ~/.config -D environment.d
	stow -t ~/.config -D clang-format
	stow -t ~/.config -D gtk-3.0
	stow -t ~/.config -D gtk-4.0
	stow -t ~/.config -D swaylock
	stow -t ~/.config -D zathura
	stow -t ~/.config -D clangd
	stow -t ~/.config -D fcitx5
	stow -t ~/.config -D i3status
	stow -t ~/.config -D rofi
