#!/bin/bash

#
# Install virtualenv for neovim
#
# virtualenv's python2 for dstat
echo " ----------- virtualenv for neovim ------------"
pyenv virtualenv $python_v2 neovim2
pyenv virtualenv $python_latest neovim3
pyenv activate neovim2
pip install neovim
pyenv which python > ~/.config/nvim/python_host_prog.txt
pyenv activate neovim3
pip install neovim
pyenv which python > ~/.config/nvim/python3_host_prog.txt
pyenv deactivate
echo " ------------ END ------------"

exec $SHELL -l
