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

## deb-spin

fai 

https://linuxmusicians.com/viewtopic.php?f=19&p=92293#p92293

https://sourceforge.net/u/ezos/profile/

Debian 10 Buster Install & mkeznixOS - Make Your Own eznixOS https://youtu.be/Q6I4nm69PLY #myTube

https://youtu.be/Q6I4nm69PLY

## app clusters

### base
* redshift
* sudo
* variety/nitrogen sync w nxtcloud
* terminal w paste from keyboard
* geany + plugins
* syncthing / nextcloud
* screenshotr
* thunar / ranger / nnn
* fuzzy search and launcher
* arandr, dualmonitor
* 

### Laptopsk
* brightness, 
* touchpad
* Broadcom
* suspend ?

### medialt
* gpodder
* SMPlayer
* gradio / stream library client

### doc prodsk
* gnumeric
* qownnotes / ...
* Thunderbird

### www (container/module)
* FF


### notes

https://flight-manual.atom.io/getting-started/sections/installing-atom/
https://github.com/lvancrayelynghe/ansible-ubuntu/commit/511d4574bb2250fc29a056fc3d39fe2bc5b21d52

User-space file system for Dropbox
https://github.com/rianhunter/dbxfs

https://alternativeto.net/software/miro/?license=opensource&platform=linux

### sync methods

git koster 75 mb, 
syncthing 12mb (+30-40mb RAM) og own/nextcloud gui (+20-40mb RAM)

### browser

firefox pulls 240 mb fra debian repos...d kalder paa en container

https://github.com/ungoogled-software/ungoogled-chromium-debian

https://www.slant.co/versus/5226/16094/~mozilla-firefox_vs_brave

https://www.slant.co/versus/5226/16094/~mozilla-firefox_vs_brave

https://alternativeto.net/software/firefox/
https://developer.mozilla.org/en-US/docs/Mozilla/Firefox/Multiple_profiles
https://support.mozilla.org/en-US/kb/profile-manager-create-remove-switch-firefox-profiles
