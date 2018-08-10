#!/bin/bash

#
# Setup Ruby for Bundle 
#
# pathの指定をユーザ定義として ~/.bundle/config へ指定
# bundle install 時、毎回 --path vendor/bundle が不要になる。
bundle config path vendor/bundle

#
# Setup virtualenv for neovim
#
echo " ----------- virtualenv for neovim ------------"
python_latest=$(pyenv install -l | grep -v '[a-z]' | tail -1 | sed 's/ //g')
python_v2=$(pyenv install -l | grep -v '[a-z]' | grep '2.7.[0-9]*' | tail -1 | sed 's/ //g')
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
