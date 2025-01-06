# dotfiles

## Requirement
- git(yum/apt-get/[windows](https://gitforwindows.org/))
- sh for linux
- nodejs
- Python
- go
- [Universal Ctags](https://ctags.io/)


## 方針
- ~/dotfiles もしくは、 %userprofile%/dotfiles を作成し、シンボリックリンクを張って運用する。
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


## for textlint

```
npm install textlint
npm install textlint-rule-prh textlint-rule-preset-jtf-style textlint-rule-preset-ja-technical-writing textlint-filter-rule-comments textlint-filter-rule-allowlist
```

```
go install github.com/mattn/efm-langserver@latest
```

```vim
:LspInstallServer efm-langserver
```

- [Vimで快適に記事を書くため環境](https://zenn.dev/skanehira/articles/2020-11-16-vim-writing-articles)

## ToDo
- Linux環境で動作確認

