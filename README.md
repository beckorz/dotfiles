# dotfiles

## Requirement
- git(yum/apt-get/[windows](https://gitforwindows.org/))
- sh for linux

## 方針
- ~/dofiles もしくは、 %userprofile%/dotfiles を作成し、シンボリックリンクを張って運用する。
- インストールスクリプト(バッチファイル)にて初期インストールを行う

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

