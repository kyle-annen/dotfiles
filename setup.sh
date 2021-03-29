#! /usr/bin/env bash

dir=$(pwd)
ln -s ${dir}/.bashrc ~/.bashrc
ln -s ${dir}/.bash_profile ~/.bash_profile
ln -s ${dir}/.vimrc ~/.vimrc
ln -s ${dir}/.tmux.conf ~/.tmux.conf
ln -s ${dir}/.tmate.conf ~/.tmate.conf
ln -s ${dir}/fish ~/.config/fish
