#!/bin/bash

#
# Install anyenv-update
#
echo " ----------- anyenv-update ------------"
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
git clone https://github.com/znz/anyenv-git.git $(anyenv root)/plugins/anyenv-git
echo " ------------ END ------------"

#
# Install rbenv
#
echo " ----------- rbenv ------------"
anyenv install rbenv
echo " ------------ END ------------"

#
# Install pyenv
#
echo " ----------- pyenv ------------"
anyenv install pyenv
echo " ------------ END ------------"

#
# Install ndenv
#
echo " ----------- nodenv ------------"
anyenv install nodenv
echo " ------------ END ------------"

#
# Install phpenv
#
echo " ----------- phpenv ------------"
anyenv install phpenv
echo " ------------ END ------------"

#
# Install goenv
#
echo " ----------- goenv ------------"
anyenv install goenv
echo " ------------ END ------------"

exec $SHELL -l
