# Vim configuration

Install : 

`````bash
cd && git clone --recursive https://github.com/Nasga/dotfiles-vim.git .vim \
  && ln -s .vim/.vimrc .vimrc && ln -s .vim/.vimrc .nvimrc \
  && ln -s .vim .nvim && vim +Helptags +qa
`````

Update :

`````bash
cd ~/.vim && git pull --all && git submodule update --init --recursive && \
  vim +Helptags +qa
`````
