#!/bin/bash

#
# Install ruby
#
echo " ----------- Ruby ------------"
rbenv --version
rbenv install -l
ruby_latest=$(rbenv install -l | grep -v '[a-z]' | tail -1 | sed 's/ //g')
rbenv install $ruby_latest
rbenv global $ruby_latest
rbenv rehash
ruby -v
gem install bundler
rbenv rehash
#
# Setup Ruby for Bundle 
#
# pathの指定をユーザ定義として ~/.bundle/config へ指定
# bundle install 時、毎回 --path vendor/bundle が不要になる。
bundle config path vendor/bundle
echo " ------------ END ------------"

#
# Install Python
#
echo " ----------- Python ------------"
pyenv --version
pyenv install -l
python_latest=$(pyenv install -l | grep -v '[a-z]' | tail -1 | sed 's/ //g')
python_v2=$(pyenv install -l | grep -v '[a-z]' | grep '2.7.[0-9]*' | tail -1 | sed 's/ //g')
pyenv install $python_latest
pyenv install $python_v2
pyenv global $python_latest $python_v2
pyenv rehash
python --version
python2 --version
python3 --version
pip install pipenv
pip2 install pipenv
echo " ------------ END ------------"

#
# Install Node.js
#
echo " ---------- Node.js ----------"
nodenv --version
nodenv install -l
#node_latest=$(nodenv install -l | grep ' v[0-9.]*' | tail -1 | sed 's/ //g')
node_latest=$(nodenv install -l | grep -v '[a-z]' | tail -1 | sed 's/ //g')
nodenv install $node_latest
nodenv global $node_latest
nodenv rehash
node -v
npm -v
echo " ------------ END ------------"

#
# Install Go
#
echo " ---------- Go ----------"
goenv --version
goenv install -l
#go_latest=$(goenv install -l | grep ' [0-9.]*' | tail -1 | sed 's/ //g')
go_latest=$(goenv install -l | grep -v '[a-z]' | tail -1 | sed 's/ //g')
goenv install $go_latest
goenv global $go_latest
goenv rehash
go version
echo " ------------ END ------------"

exec $SHELL -l
