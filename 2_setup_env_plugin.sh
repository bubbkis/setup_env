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
echo " ----------- ndenv-yarn ------------"
git clone https://github.com/pine/ndenv-yarn-install.git "$(ndenv root)/plugins/ndenv-yarn-install"
echo " ------------ END ------------"

exec $SHELL -l
