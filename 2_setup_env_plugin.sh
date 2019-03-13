#!/bin/bash
#
# Install pyenv-virtualenv
#
echo " ----------- pyenv-virtualenv ------------"
git clone https://github.com/yyuu/pyenv-virtualenv "$(pyenv root)/plugins/pyenv-virtualenv"
echo " ------------ END ------------"

#
# Install ndenv-yarn
#
echo " ----------- nodenv-yarn ------------"
mkdir -p "$(nodenv root)/plugins"
git clone https://github.com/pine/nodenv-yarn-install.git "$(nodenv root)/plugins/nodenv-yarn-install"
echo " ------------ END ------------"

exec $SHELL -l
