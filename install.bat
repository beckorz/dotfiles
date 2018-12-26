@echo off

echo Need: NTFS file system.
echo Need: Administrative right.

pause


SET DIR_HOME=%USERPROFILE%
SET DIR_DOTFILES=%USERPROFILE%/dotfiles

mklink %DIR_HOME%/.gitignore %DIR_DOTFILES%/.gitignore
mklink %DIR_HOME%/.jshintrc  %DIR_DOTFILES%/.jshintrc
mklink %DIR_HOME%/.minttyrc  %DIR_DOTFILES%/.minttyrc
mklink %DIR_HOME%/.vimrc     %DIR_DOTFILES%/.vimrc

mklink %DIR_HOME%/init.cmd   %DIR_DOTFILES%/init.cmd



pause
