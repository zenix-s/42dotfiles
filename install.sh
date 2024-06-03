#!/bin/sh

if [ -f ~/.zshrc ]; then

		mv ~/.zshrc ~/.zshrc.bak
fi
		ln -s ~/.dotfiles/.zshrc ~/.zshrc

if [ -d ~/.config/nvim ]; then
		mv ~/.config/nvim ~/.config/nvim.bak
fi
		ln -s ~/.dotfiles/.config/nvim ~/.config/nvim

if [ -d ~/.config/terminator ]; then
		mv ~/.config/terminator ~/.config/terminator.bak
fi
		ln -s ~/.dotfiles/.config/terminator ~/.config/terminator

if [ -d ~/.config/zsh ]; then
		mv ~/.config/zsh ~/.config/zsh.bak
fi
		ln -s ~/.dotfiles/.config/zsh ~/.config/zsh