#!/bin/sh

if [ -f ~/.zshrc ]; then
		rm -rf ~/.zshrc
fi
		ln -s ~/.dotfiles/.zshrc ~/.zshrc

if [ -d ~/.config/nvim ]; then
		rm -rf ~/.config/nvim
fi
		ln -s ~/.dotfiles/.config/nvim ~/.config/nvim

if [ -d ~/.config/terminator ]; then
		rm -rf ~/.config/terminator
fi
		ln -s ~/.dotfiles/.config/terminator ~/.config/terminator

if [ -d ~/.config/zsh ]; then
		rm -rf ~/.config/zsh
fi
		ln -s ~/.dotfiles/.config/zsh ~/.config/zsh

if [ -d ~/.tmux.conf ]; then
		rm -rf ~/.tmux.conf
fi
		ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
