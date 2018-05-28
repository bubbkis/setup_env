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
pyenv global $python_latest
pyenv rehash
python --version
pip install pipenv
echo " ------------ END ------------"

#
# Install Node.js env
#
echo " ---------- Node.js ----------"
ndenv --version
ndenv install -l
node_latest=$(ndenv install -l | grep ' v[0-9.]*' | tail -1 | sed 's/ //g')
ndenv install $node_latest
ndenv global $node_latest
ndenv rehash
node -v
npm -v
echo " ------------ END ------------"

exec $SHELL -l
