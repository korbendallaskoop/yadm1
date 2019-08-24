# yadm1
tst of yadm.io

https://github.com/korbendallaskoop/yadm1

https://tinyurl.com/yadm1

https://github.com/TheLocehiliosan/yadm/blob/master/yadm.md

///////

   yadm init
          Create an empty repo for managing files

   yadm add .bash_profile ; yadm commit
          Add .bash_profile to the Git index and create a new commit

yadm add ~/.bash_profile ~/.bashrc ; yadm commit -m bash_profile

   yadm remote add origin <url>
          Add a remote origin to an existing repository

yadm remote add origin https://github.com/korbendallaskoop/yadm1

yadm remote add origin git@github.com:korbendallaskoop/yadm1

///////

yadm remote set-url origin git@github.com:korbendallaskoop/yadm1

This could be useful if you manage your ssh keys in the yadm repository. That could make it difficult to initially clone the repository using the ssh protocol. 

You can start by cloning the repository using the https protocol (and providing a password), and then change the repository’s URL after you’ve decrypted your ssh keys.

/////

   yadm push -u origin master
          Initial push of master to origin

   echo .ssh/*.key >> $HOME/.yadm/encrypt
          Add a new pattern to the list of encrypted files

   yadm encrypt ; yadm add ~/.yadm/files.gpg ; yadm commit
          Commit a new set of encrypted files

/////////

git config --global "user.email" "your-email@domain"
git config --global "user.name"  "Your Name"

yadm add ~/.gitconfig

However, if you want commits to your yadm repo to use a different author, you can configure these settings in the yadm repo itself.

yadm gitconfig "user.email" "alternate-email@domain"
yadm gitconfig "user.name"  "Alternate Name"

Note: Configuring these settings directly in the yadm repo will require you to configure it each time you clone the repo.
