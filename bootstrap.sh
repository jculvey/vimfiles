mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/jeetsukumaran/vim-buffergator.git
git clone https://github.com/bronson/vim-trailing-whitespace.git

mkdir ~/.vim/colors
cd !$
curl https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/vim/colors/Tomorrow-Night-Eighties.vim > Tomorrow-Night-Eighties.vim

git clone 
