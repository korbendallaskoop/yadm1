# source /usr/share/defaults/etc/profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# VNC Server in Service Mode daemon
# Start or stop the service with:
#  systemctl (start|stop) vncserver-x11-serviced.service
#Mark or unmark the service to be started at boot time with:
# systemctl (enable|disable) vncserver-x11-serviced.service


#-------------------------------------------------------------
# Solus on HP2760p install specific

# from Solus Josh
# https://discuss.getsol.us/d/179-what-are-your-best-most-used-terminal-aliases/3

#export DevicesDir="/usr/share"
# ....Data partition
#alias g2="cd ${DevicesDir}/morespace"

#go to bookmarks for mounted device folders on Data partition
export DevicesDir="/run/media/korben/Data"
alias g2vms="cd ${DevicesDir}/Virtual\ Machines"
alias rmk="cd /run/media/korben"

#============================================================
#  Solux plexusk pkg

alias epi='sudo eopkg install'
alias epr='sudo eopkg remove'
alias eprmo='sudo eopkg remove-orphans' # (rmo) - Remove orphaned packages
alias eps='sudo eopkg search'
alias epinf='sudo eopkg info'
alias upd='sudo eopkg up' #update solar system solus

# checks the sha256sums of files on disk versus what was originally installed by the original .eopkg file.
# https://getsol.us/articles/troubleshooting/general-troubleshooting/en/
alias epchk='sudo eopkg check'

#============================================================
#  Debiansk

alias sai='sudo apt install'
alias sas='sudo apt search'
alias sap='sudo apt purge'
alias sau='sudo apt update'

# apt-get remove
# packagenam binaries but not the configuration or data files of the package packagename.
# leaves dependencies installed with it on installation time untouched.

alias sar='sudo apt purge'

# apt-get purge
# remove about everything regarding the package packagename, but not the dependencies installed with it
# does not remove configuration or data files residing in users home directories,
# There is no easy way to get those removed as well.

alias sara='sudo apt autoremove'
# removes orphaned packages, i.e. packages that used to be installed as an dependency, but aren't any longer

alias aptall='apt update && apt -y upgrade && apt -y autoremove'

#============================================================
#  SLAX!!

alias sc='savechanges' 	# Save all filesystem modifications made during current session into a module file
alias sc='sb2dir' 		# Convert a .sb module into a directory
alias sc='dir2sb' 		# Convert a directory into .sb module
alias sc='rmsbdir' 		# Erase directory created by sb2dir
alias sc='genslaxiso' 	# Generate Slax iso file with new modules, if running Slax from read-only media

alias g2m="cd /run/initramfs/memory/data/slax/modules/" # 

alias sla='slax activate'
alias sld='slax deactivate' # if any of the module files are open or used, deactivation will not be possible

#-------------------------------------------------------------
# i3 apps
# https://github.com/jamielinux/bashmount

alias bm='bashmount'
alias nb='newsboat'

# when dualing a VGA display to the laptop
# can't get left < > right window movement to work both ways, 'above' and switching with up/down instead works fine
alias i3duo='xrandr --output VGA1 --primary --above LVDS1 --auto'

#alias i3duo='xrandr --output LVDS1 --primary --auto'
#alias i3duol='xrandr --output LVDS1 --primary --auto --right-of VGA1'
#alias i3duor='xrandr --output LVDS1 --primary --auto --left-of VGA1'

alias i3solo='xrandr --output LVDS1 --primary --auto --output VGA1 --off'

#============================================================
#  Land of Vagrantus

export vagrant="/usr/bin/vagrant"
alias vagrant="${vagrant}"

alias vg='vagrant'
alias vgi='vagrant init'

alias vup='vagrant up' # starts and provisions the vagrant environment
alias vupl='vagrant up --provider lxc' # starts and provisions the vagrant environment
alias vupr='vagrant up --provision' # starts and provisions the vagrant environment

# vagrant up --provider virtualbox
# vagrant up --provider lxc

export VAGRANT_DEFAULT_PROVIDER="virtualbox"

alias vsh='vagrant ssh'
alias vgr='vagrant reload --provision' # restarts vagrant machine, loads new Vagrantfile configuration

alias vgs='vagrant suspend' # as in pause/sleep/ or save machine state in VBx
alias vgh='vagrant halt' # power off VM

alias vgbl='vagrant box list'
alias vgst='vagrant global-status'
alias vgd='vagrant destroy' # delete vagrant instance
alias vgbrm='vagrant box remove' # delete box image

# [vm-name] is default as...default
alias vgss='vagrant snapshot save' # [vm-name] NAME
alias vgsr='vagrant snapshot restore' # [vm-name] NAME
alias vgsd='vagrant snapshot delete' # [vm-name] NAME
alias vgsl='vagrant snapshot list'

#============================================================
#  It's a dock

alias dk='docker'
alias dks='docker start'
alias dkst='docker stop'
alias dkr='docker run'

alias dkim='docker image ls'
alias dkrmi='docker rmi'

## List containers (running, all, all in quiet mode)
alias dkc='docker container ls'
alias dkca='docker container ls --all'
alias dkp='docker ps'

alias dkcrm='docker rm'

alias dkcu='docker-compose up'
alias dkcd='docker-compose down'
alias dkce='docker-compose exec'


#-------------------------------------------------------------
# redshift color temperature
# neutral temperature is 6500K. Using this value will not change the color

alias rs23='redshift -P -O 2333'    #
alias rs27='redshift -P -O 2777'    #
alias rs3='redshift -P -O 3000'    #
alias rs33='redshift -P -O 3333'    #
alias rs36='redshift -P -O 3666'    #
alias rs4='redshift -P -O 4000'    #
alias rs44='redshift -P -O 4444'    #
alias rsd='redshift -o 90'    # One-shot mode, repeat to continuously decrease by 10%
alias rsp='redshift -p'    # status
alias rsx='redshift -x'    # kill


#============================================================
#  Git
#  [<options>] <name> <url>

alias gts='git status'
alias grv='git remote -v'
alias gra='git remote add'
alias gbr='git branch -a'
alias gck='git checkout'
alias gcm='git commit -m'
alias gpu='git push'
alias gps='git push --set-upstream'
alias gpl='git pull'
alias gcl='git clone'
alias ggc='git gc'

#-------------------------------------------------------------
# setting up .cfg_bckp/ as a dotfiles backup repo
# from https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
# via DistroTube

alias cfg='/usr/bin/git --git-dir=$HOME/.cfg_bckp/ --work-tree=$HOME'

# add a file or folder to repo:
alias cfga='/usr/bin/git --git-dir=$HOME/.cfg_bckp/ --work-tree=$HOME add'
# or remove:
alias cfgr='/usr/bin/git --git-dir=$HOME/.cfg_bckp/ --work-tree=$HOME rm -r --cached'

# stage and commit status:
alias cfgs='/usr/bin/git --git-dir=$HOME/.cfg_bckp/ --work-tree=$HOME status'
# show textual staged edits to be committed and changes in the working tree that have not yet been staged:
alias cfgsv='/usr/bin/git --git-dir=$HOME/.cfg_bckp/ --work-tree=$HOME status -v -v'
# list all repo'd files:
alias cfgl='/usr/bin/git --git-dir=$HOME/.cfg_bckp/ --work-tree=$HOME ls-tree -tr --name-only --full-name --full-tree master'
# add -d to list folders only
# list all repo'd files and grep <string>
alias cfgg='/usr/bin/git --git-dir=$HOME/.cfg_bckp/ --work-tree=$HOME ls-tree -tr --name-only --full-name --full-tree master | grep'

# commit
alias cfgc='/usr/bin/git --git-dir=$HOME/.cfg_bckp/ --work-tree=$HOME commit -a -m'
# push
alias cfgp='/usr/bin/git --git-dir=$HOME/.cfg_bckp/ --work-tree=$HOME push'

####### .cfp_bckp private dotfiles backup repo

alias cfp='/usr/bin/git --git-dir=$HOME/.cfp_bckp/ --work-tree=$HOME'
alias cfpa='/usr/bin/git --git-dir=$HOME/.cfp_bckp/ --work-tree=$HOME add'
alias cfpr='/usr/bin/git --git-dir=$HOME/.cfp_bckp/ --work-tree=$HOME rm -r --cached'

alias cfps='/usr/bin/git --git-dir=$HOME/.cfp_bckp/ --work-tree=$HOME status'
alias cfpsv='/usr/bin/git --git-dir=$HOME/.cfp_bckp/ --work-tree=$HOME status -v -v'
alias cfpl='/usr/bin/git --git-dir=$HOME/.cfp_bckp/ --work-tree=$HOME ls-tree -tr --name-only --full-name --full-tree master'
alias cfpg='/usr/bin/git --git-dir=$HOME/.cfp_bckp/ --work-tree=$HOME ls-tree -tr --name-only --full-name --full-tree master | grep'

alias cfpc='/usr/bin/git --git-dir=$HOME/.cfp_bckp/ --work-tree=$HOME commit -a -m'
alias cfpp='/usr/bin/git --git-dir=$HOME/.cfp_bckp/ --work-tree=$HOME push'

alias gic='micro .config/i3/config'

#-------------------------------------------------------------

alias xv='xev | sed -ne '/^KeyPress/,/^$/p'' # from https://web.archive.org/web/20170825051821/http://madduck.net:80/docs/extending-xkb/

alias xme='xmodmap -e'
alias xmpm='xmodmap -pm'
alias xmpke='xmodmap -pke'
alias xmg='xmodmap -pke | grep'

alias xmrz='xmodmap ~/.Xmodmap_razor_V500'
alias xmhp='xmodmap ~/.Xmodmap_HP2760_broken_left_arrow_key'

alias sxku='setxkbmap -layout us'
alias sxkd='setxkbmap -layout dk'

#-------------------------------------------------------------

alias ipa='ip addr'
alias ipg='ip addr | grep'
alias ilsd='sudo ip link set dev'
#alias ipa='ip addr'

#-------------------------------------------------------------
# youtube-dl https://github.com/ytdl-org/youtube-dl

# music
alias ytm='youtube-dl --download-archive archive.txt -x -i --audio-format "mp3" --audio-quality 192K -o "%(title)s.%(ext)s" --embed-thumbnail --add-metadata'

# speak
alias yts='youtube-dl --download-archive archive.txt -x -i --audio-format "mp3" --audio-quality 96K -o "%(uploader)s - %(title)s.%(ext)s" --embed-thumbnail --add-metadata'

# video
alias ytf='youtube-dl -F'
alias ytsb='youtube-dl --list-subs'

alias ytv='youtube-dl --download-archive archive.txt -i -o "%(uploader)s - %(title)s.%(ext)s" --embed-thumbnail --add-metadata --all-subs --sub-format srt'
# 720p, 128k AAC mp4 or 480p or 360p if no 720p source
alias yt720='youtube-dl --download-archive archive.txt -i -f 136+140/135+140/18+140 -o "%(uploader)s - %(title)s.%(ext)s" --embed-thumbnail --add-metadata'
# 480p, 128k AAC mp4
alias yt480='youtube-dl --download-archive archive.txt -i -f 135+140/18+140 -o "%(uploader)s - %(title)s.%(ext)s" --embed-thumbnail --add-metadata'
# for private playlists add -u user@name

# vimeo
alias vim720='youtube-dl -f http-720p -o "%(uploader)s - %(title)s.%(ext)s" --embed-thumbnail --add-metadata'
alias vim1080='youtube-dl -f http-1080p -o "%(uploader)s - %(title)s.%(ext)s" --embed-thumbnail --add-metadata'

# --mark-watched                   Mark videos watched (YouTube only)
# --no-mark-watched                Do not mark videos watched (YouTube only)
# --yes-playlist                   Download the playlist, if the URL refers to

# yt format codes
# 18 = 360p, 96k, mp4
# 22 = 720p, 192k, mp4

# 135 = 480p, 1107k, 25fps, video only
# 136 = 720p, 2213k, 25fps, video only
# 140 = 128k audio
# 251 = 160k audio (opus)

#-------------------------------------------------------------
# RAM da disk

alias rmd55='sudo mount -t tmpfs -o size=5555M tmpfs ~/.ramdisk'
alias rmd44='sudo mount -t tmpfs -o size=4444M tmpfs ~/.ramdisk'
alias rmd33='sudo mount -t tmpfs -o size=3333M tmpfs ~/.ramdisk'
alias rmd11='sudo mount -t tmpfs -o size=1111M tmpfs ~/.ramdisk'
alias rmd0='sudo umount ~/.ramdisk'

#-------------------------------------------------------------
# spawn tst filesizes

alias spwnhg='fallocate -l 500M 500M_file.img'
alias spwn1g='fallocate -l 1G 1G_file.img'
alias spwn3g='fallocate -l 3G 3G_file.img'
alias spwn5g='fallocate -l 5G 5G_file.img'
alias spwn11g='fallocate -l 11G 11G_file.img'
alias spwn22g='fallocate -l 22G 22G_file.img'