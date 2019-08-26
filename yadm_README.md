# yadm1
tst of yadm.io

https://github.com/korbendallaskoop/yadm1

https://tinyurl.com/yadm1

https://github.com/TheLocehiliosan/yadm/blob/master/yadm.md

# init

	   yadm init

Create an empty repo for managing files

   yadm add .bash_profile ; yadm commit

Add .bash_profile to the Git index and create a new commit

	yadm add ~/.bash_profile ~/.bashrc ; yadm commit -m "bash_profile updated"

	yadm commit -a -m "...updated"

Add a remote origin to an existing repository

	yadm remote add origin <url>

	yadm remote add origin https://github.com/korbendallaskoop/yadm1

	yadm remote add origin git@github.com:korbendallaskoop/yadm1

# pushbackyadm

	yadm remote set-url origin 

	git@github.com:korbendallaskoop/yadm1

This could be useful if you manage your ssh keys in the yadm repository. That could make it difficult to initially clone the repository using the ssh protocol. 

You can start by cloning the repository using the https protocol (and providing a password), and then change the repository’s URL after you’ve decrypted your ssh keys.

   yadm push -u origin master
          Initial push of master to origin

   echo .ssh/*.key >> $HOME/.yadm/encrypt

Add a new pattern to the list of encrypted files

   yadm encrypt ; yadm add ~/.yadm/files.gpg ; yadm commit

Commit a new set of encrypted files

# config

	git config --global "user.email" "your-email@domain"
	git config --global "user.name"  "Your Name"
	
	yadm add ~/.gitconfig
	
if you want commits to your yadm repo to use a different author, you can configure these settings in the yadm repo itself.

	yadm gitconfig "user.email" "alternate-email@domain"
	yadm gitconfig "user.name"  "Alternate Name"
	
Configuring these settings directly in the yadm repo will require you to configure it each time you clone the repo.


# Common Commands
https://yadm.io/docs/common_commands

Most of these operations will look like Git commands; because they are. 

The difference is your $HOME directory becomes the working directory, and you can run the commands from any directory.

Commands below which are special to yadm are denoted with * 

	yadm status
	
Show the repository status; added, changed, removed files. Because a $HOME directory often more than only dotfiles, by default yadm ignores untracked files when displaying status.

	yadm push, yadm fetch
Send or retrive commits to/from your remote repository .

	yadm commit --amend
Replace the last commit with a new one. Allows you to change your commit message or add staged changes to the previous commit.

	yadm diff
View changes (uncommitted) you’ve made to your dotfiles.

	yadm diff --cached
View changes staged with yadm add. These changes will be added with the next commit.

	yadm list -a
Print a list of files managed by yadm. The -a option will cause all managed files to be listed. Otherwise, the list will only include files from the current directory or below.

	yadm alt
Create symbolic links for any managed files matching the alternate naming rules. 

	yadm encrypt
Encrypt all files matching the patterns found in $HOME/.yadm/encrypt. 

	yadm decrypt, yadm decrypt -l
Decrypt files stored in $HOME/.yadm/files.gpg. Using the -l option will only list the files (without decrypting them). 

	yadm clone --bootstrap <URL>
Clone the repository from <URL>, and automatically run bootstrap if successful. 

	yadm remote -v
Display detailed information about all configured remote repositories.

	yadm checkout -- <file>
Abandon local changes to <file>, replacing it with the HEAD revision of <file>.

	yadm checkout -b <branch-name>
Create a branch called <branch-name>, and check the branch out.