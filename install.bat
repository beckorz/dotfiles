@echo off

echo Need: NTFS file system.
echo Need: Administrative right.

echo If the current logged-in user does not have administrative privileges and needs to be promoted by another user, the following home directory must be modified.
pause

REM ���݂̃��O�I�����[�U�[�����i�o����ꍇ
SET DIR_HOME=%USERPROFILE%
SET DIR_DOTFILES=%USERPROFILE%\dotfiles
REM �ʃ��[�U�[�����i�����������Ă���ꍇ�A�����I�Ɏ����̃��[�U�[�f�B���N�g���Ƀp�X��ʂ��B�� �ȉ��̃p�X���C��
REM SET DIR_HOME=C:\Users\otheruser
REM SET DIR_DOTFILES=C:\Users\otheruser\dotfiles


mklink    %DIR_HOME%\.ctags                  %DIR_DOTFILES%\.ctags
mklink    %DIR_HOME%\.gitignore              %DIR_DOTFILES%\.gitignore
mklink    %DIR_HOME%\.gitconfig              %DIR_DOTFILES%\.gitconfig
mklink    %DIR_HOME%\.jshintrc               %DIR_DOTFILES%\.jshintrc
mklink    %DIR_HOME%\.minttyrc               %DIR_DOTFILES%\.minttyrc
mklink    %DIR_HOME%\.vimrc                  %DIR_DOTFILES%\.vimrc
mklink    %DIR_HOME%\.gvimrc                 %DIR_DOTFILES%\.gvimrc
mklink    %DIR_HOME%\.commit_template        %DIR_DOTFILES%\.commit_template
mklink    %DIR_HOME%\init.cmd                %DIR_DOTFILES%\init.cmd
mklink    %DIR_HOME%\init_local.cmd          %DIR_DOTFILES%\init_local.cmd
mklink /D %DIR_HOME%\vimfiles                %DIR_DOTFILES%\vimfiles
mklink /D %APPDATA%\efm-langserver           %DIR_DOTFILES%\efm-langserver
mklink    %DIR_HOME%\.textlintrc             %DIR_DOTFILES%\.textlintrc
mklink    %DIR_HOME%\.prh.yml                %DIR_DOTFILES%\.prh.yml


mkdir %DIR_HOME%\vimfiles\tmp
mkdir %DIR_HOME%\vimfiles\undo
mkdir %DIR_HOME%\vimfiles\colors
mkdir %DIR_HOME%\vimfiles\plugin

powershell -NoProfile -ExecutionPolicy Unrestricted -Command "& { irm https://deno.land/install.ps1 | iex }"

pause
