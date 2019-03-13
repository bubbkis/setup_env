# .profileの設定
- [2018年 ArchLinuxで開発環境を作る完全版 (UEFI + GNOME3 + GRUB) - 開発環境構築編](https://ore.saizensen.tech/2018_archlinux_develop_setup/) を行った前提です。
- ↑をやっていない人は.zshrc、.zprofile、.bashrc、.bash_profileなどに以下の設定を
```zsh
if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
    # tmux対応
    for D in `\ls $HOME/.anyenv/envs`
    do
        export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
    done
fi
eval "$(pyenv virtualenv-init -)"
eval "$(pipenv --completion)"
eval "$(goenv init -)"
```

# anyenv のインストール
```zsh
git clone https://github.com/riywo/anyenv ~/.anyenv
exec $SHELL -l
```

# setup-env の使い方
- anyenvのプラグイン(anyenv-update、anyenv-git)をインストール
- rbenv(Ruby)、pyenv(Python)、nodenv(Node.js)、phpenv(PHP)、goenv(Go) のインストール
 - 他にもRenv、erlenv、plenv、scalaenvなど必要な物があればカスタマイズしてご自由にどうぞ
- プラグイン(pyenv-virtualenv、ndenv-yarn) のインストール
- Ruby(最新版)、Python(最新版、2.7系の最新)、Node.js(最新版)、Go(最新版) のインストール
- PHPは[Laradock](https://github.com/laradock/laradock)で対応するためインストールしていない。一応phpenvをインストールしただけ。
```zsh
https://github.com/bubbkis/setup_env.git ~/setup_env
sh ~/setup_env/1_setup_env.sh
sh ~/setup_env/2_setup_env_plugin.sh
sh ~/setup_env/3_setup_lang.sh
```

