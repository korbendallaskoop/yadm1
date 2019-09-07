base distro 2020 
================

## specs

kill all services, update checkers etc. schedule dailies instead

https://www.google.com/search?client=firefox-b-d&q=zram+swap

https://utcc.utoronto.ca/~cks/space/blog/unix/NoSwapConsequence

cron cache og journal cleans 

## conf

* keyboard layout switch i hotkey kald

https://discuss.getsol.us/d/2143-small-and-fast

Recently I read an article in How-to-Geek about changing from a resource-hungry distro (Ubuntu) to a resource-thrifty one (Manjaro) in order to speed up processing and require less support from a resource-challenged computer. It included this bash command to prove its point:

	systemctl list-unit-files --state=enabled --no-pager

heavyweight distro had 90 running daemons when idle, while Manjaro had only 24. I

just ran that command on a Solus Budgie VM that I'm currently running, and the result was 12! That suggests that the team has done a wonderful job of cutting out the unnecessary waste.

For anyone whos interested, here's the article: https://www.howtogeek.com/430556/why-i-switched-from-ubuntu-to-manjaro-linux/

https://discuss.getsol.us/d/2100-flatpak-or-snap/6
Which one do you prefer to use and works better for Solus at the moment according to your experience? I am concerned about Snap because Canonical (which is behind of it) contains Amazon ads and data leaks by default. What do you think about that?

I must say that I prefer Flatpak to Snaps all days of the year. I used Snaps in the beginning to get applications that weren't available in the repository. After a while I got tired of the instabilities of Snapd and figured I would move to something that is entirely open source like Flatpak. After using Flatpak I noticed that it feels way faster, the desktop integration is miles ahead and the flathub store is just wonderful. Flatpak also has the nice improvement of not having hardcoded icons which means that (if the icon local icon theme supports it, papirus-icon-theme does for example) you can use the local icon theme for the icons.

Flatpak just works great and much better than Snaps in my testing. My advice would be to use Snaps ONLY when an app isn't avaliable on flathub or any other repo. I have personally nuked everything that has to do with snaps on my computers in the hopes of it never coming back...f

### frugality / RAM OS

http://download.tuxfamily.org/antix/docs-antiX-17/FAQ/persistence.html

## app clusters

### base
* sudo, tree, micro (+5-600mb vmem vs nano!, not in base repos), mcedit rocks!
* WM, keybindings, config
* terminal w copy paste from keyboard, zoom, styling a $
	* mate and xfce pulls 80mb, lxterminal 3.5mb.  
	* colour coding $ 
* geany + plugins
* screenshotr
* thunar / ranger / nnn
* launcher, dmenu, rofi, 
* lx/arandr (27mb in naked os openbox), dualmonitor
* https://packages.debian.org/de/stretch/software-properties-gtk
* https://extensions.gnome.org/extension/1082/cpufreq/
* https://code.google.com/archive/p/i7z/
* http://konkor.github.io/cpufreq/install/ 
* https://github.com/bulletmark/libinput-gestures

### container base
* https://flathub.org/apps/details/org.gnome.Boxes
* vbox
* ansible, vagrant
* lxc (lxd w systemd)
* https://flatpak.org/setup


### eyecandy cant let you go conveniently
* redshift (on non-x debian: 118 MB of additional disk space will be used.!)
* getstation m drive, reddit, masto
* conky / polybar resource monitor (ram, disk, battery, lan, sync) 
* variety/nitrogen sync w nxtcloud (variety @ 155MB just nu)

### doc prodsk
* gnumeric
* git, yadm sync setup
* syncthing / nextcloud / webdavs
	* https://www.thefanclub.co.za/overgrive Price: $4.99
* sysimage tools, backup
* fuzzy search  
* atom
	* https://github.com/lvancrayelynghe/ansible-ubuntu/commit/511d4574bb2250fc29a056fc3d39fe2bc5b21d52

### daily bread www 
* FF / 
	* https://alternativeto.net/software/waterfox/
	* http://www.seamonkey-project.org/
	* https://www.gnu.org/software/gnuzilla/
* Thunderbird
* qownnotes / markdown notes editor w browser clipper
 
### audio medialt
* gpodder
* SMPlayer
* gradio / stream library client
* fuzzy search, hook to photo and video library
* jack, kxstudz
* spotify, yt lib and pls

### multimedialt
* OBS
* kdenlive / openshot
* youtube-dl
* ffmpeg
* makemkv
* chromium/brave m TV4ever
	* https://alternativeto.net/software/ungoogled-chromium/
	* https://alternativeto.net/software/iridium/
* krita, mypaint

### Laptopsk
* brightness, 
* touchpad
* Broadcom
* suspend ?
* touch
* http://download.tuxfamily.org/antix/docs-antiX-17/FAQ/screenlight.html

### known unknowns
* kobo sync https://www.reddit.com/r/linuxquestions/comments/cy1x9b/any_alternative_to_calibre_as_a_library_manager/

## notes

https://flight-manual.atom.io/getting-started/sections/installing-atom/

https://github.com/lvancrayelynghe/ansible-ubuntu/commit/511d4574bb2250fc29a056fc3d39fe2bc5b21d52

User-space file system for Dropbox
https://github.com/rianhunter/dbxfs

https://alternativeto.net/software/miro/?license=opensource&platform=linux

## sync methods
git koster 75 mb, 
syncthing 12mb (+30-40mb RAM) og own/nextcloud gui (+20-40mb RAM, elr lige nu 700!, set paa 1500 - nextcloudcmd 800mb)

## browser

firefox pulls 240 mb fra debian repos...d kalder paa en container

https://github.com/ungoogled-software/ungoogled-chromium-debian

https://www.slant.co/versus/5226/16094/~mozilla-firefox_vs_brave

https://www.slant.co/versus/5226/16094/~mozilla-firefox_vs_brave

https://alternativeto.net/software/firefox/
https://developer.mozilla.org/en-US/docs/Mozilla/Firefox/Multiple_profiles
https://support.mozilla.org/en-US/kb/profile-manager-create-remove-switch-firefox-profiles
