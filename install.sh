export DIR_HOME=~
export DIR_DOTFILES=~/dotfiles

ln -sf $DIR_DOTFILES/.gitignore         $DIR_HOME/.gitignore
ln -sf $DIR_DOTFILES/.gitconfig         $DIR_HOME/.gitconfig
ln -sf $DIR_DOTFILES/.jshintrc          $DIR_HOME/.jshintrc
ln -sf $DIR_DOTFILES/.minttyrc          $DIR_HOME/.minttyrc
ln -sf $DIR_DOTFILES/.vimrc             $DIR_HOME/.vimrc
ln -sf $DIR_DOTFILES/.gvimrc            $DIR_HOME/.gvimrc
ln -sf $DIR_DOTFILES/init.cmd           $DIR_HOME/init.cmd
ln -sf $DIR_DOTFILES/vimfiles           $DIR_HOME/vimfiles
ln -sf $DIR_DOTFILES/.commit_template   $DIR_HOME/.commit_template

