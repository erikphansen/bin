bin
===

My bash setup. Just using Github as an offsite backup of this Git repo.

FWIW, this `bin` dir lives locally in my home folder. The contents of my `~/.bashrc` and `~/.bash_profile` are as follows.

    # ~/.bashrc:

    source ~/bin/dotfiles/bashrc


    # ~/.bash_profile:

    if [ -f ~/.bashrc ];
    then
        source ~/.bashrc
    fi


Therefore, my local `.bash_profile` sources my local `.bashrc` and my local `.bashrc` sources the `bashrc` file that lives in my home folder.