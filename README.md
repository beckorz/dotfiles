# dotfiles

## Requirement
- git(yum/apt-get/[windows](https://gitforwindows.org/))
- sh for linux

## 方針
- ~/dofiles もしくは、 %userprofile%/dotfiles を作成し、シンボリックリンクを張って運用する。
- インストールスクリプト(バッチファイル)にて初期インストールを行う
- vimの端末毎の特有の設定は、 `~/vimfiles/rc/vimrc_local.vim` に設定する

## Linux

```
git clone https://github.com/beckorz/dotfiles.git ~/dotfiles
sh install.sh
```

## Windows

```bat
git clone https://github.com/beckorz/dotfiles.git %userprofile%/dotfiles
install.bat
```

