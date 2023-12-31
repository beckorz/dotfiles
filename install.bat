@echo off

echo Need: NTFS file system.
echo Need: Administrative right.

pause


SET DIR_HOME=%USERPROFILE%
SET DIR_DOTFILES=%USERPROFILE%\dotfiles

mklink    %DIR_HOME%\.ctags           %DIR_DOTFILES%\.ctags
mklink    %DIR_HOME%\.gitignore       %DIR_DOTFILES%\.gitignore
mklink    %DIR_HOME%\.gitconfig       %DIR_DOTFILES%\.gitconfig
mklink    %DIR_HOME%\.jshintrc        %DIR_DOTFILES%\.jshintrc
mklink    %DIR_HOME%\.minttyrc        %DIR_DOTFILES%\.minttyrc
mklink    %DIR_HOME%\.vimrc           %DIR_DOTFILES%\.vimrc
mklink    %DIR_HOME%\.gvimrc          %DIR_DOTFILES%\.gvimrc
mklink    %DIR_HOME%\.commit_template %DIR_DOTFILES%\.commit_template
mklink    %DIR_HOME%\init.cmd         %DIR_DOTFILES%\init.cmd
mklink /D %DIR_HOME%\vimfiles         %DIR_DOTFILES%\vimfiles

mkdir %DIR_HOME%\vimfiles\tmp
mkdir %DIR_HOME%\vimfiles\undo

pause
