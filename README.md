# dotfiles

## Requirement
- git(yum/apt-get/[windows](https://gitforwindows.org/))
- sh for linux

## 方針
- ~/dofiles もしくは、 %userprofile%/dotfiles を作成し、シンボリックリンクを張って運用する。
- インストールスクリプト(バッチファイル)にて用意

## Linux

```
git clone https://github.com/beckorz/dotfiles.git ~/dotfiles

ln -s
```

## Windows

```bat
git clone https://github.com/beckorz/dotfiles.git %userprofile%/dotfiles
```

