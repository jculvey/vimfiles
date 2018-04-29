# Grab the color scheme
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/vim/colors/Tomorrow-Night-Eighties.vim > Tomorrow-Night-Eighties.vim

# Fetch the .vimrc
curl https://raw.githubusercontent.com/jculvey/vimfiles/master/.vimrc > ~/.vimrc
