# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Load some plugins
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/jeetsukumaran/vim-buffergator.git
git clone https://github.com/bronson/vim-trailing-whitespace.git

# Grab the color scheme
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/vim/colors/Tomorrow-Night-Eighties.vim > Tomorrow-Night-Eighties.vim

# Fetch the .vimrc
curl https://raw.githubusercontent.com/jculvey/vimfiles/master/.vimrc > ~/.vimrc
