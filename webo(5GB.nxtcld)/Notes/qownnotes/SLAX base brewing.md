SLAX base brewing
=================

## modularity

Generate Slax ISO image, adding specified modules
Regular expression is used to exclude any existing path or file with -e regex

Usage:
        /usr/bin/genslaxiso [[ -e regex ]] target.iso [[module.sb]] [[module.sb]] ...

        # to create Slax iso without chromium.sb module:
        /usr/bin/genslaxiso -e 'chromium' slax_without_chromium.iso

        # to create Slax text-mode core only:
        /usr/bin/genslaxiso -e 'firmware|xorg|desktop|apps|chromium' slax_textmode.iso


## Slax Linux 9.6.3 sb modules without compromise size

denos installerer et 272k program i hhv persistent og fresh mode (til et nyt module)
i persistence fylder apt cachen 120mb oveni
https://youtu.be/lugCRiWXDE8?list=LLKZuHgOQok-F25Exg9mEjJg&t=290

THE GOOD: apt allow us insttall packages easily...
THE BAD : apt will require to add more meta-data
THE UGLY: if not created as module will impact slax size

Create 2 Clon VirtualBox Slax Default Install...

VBox 1 Boot Slax in Persistant Mode
 apt install screenfetch
 screenfetch
 reboot
 df -h to check Distro Size...

VBOx 2 Boot Slax in Fresh Start Mode
 apt install scfreenfetch
 save_changes /run/initramfs/memory/data/slax/modules/screenfetch.sb
 reboot
 df -h to check Distro Size...

Tomas confirms same question here
https://groups.google.com/forum/#!searchin/slax-users/memory$2Fchanges%7Csort:date/slax-users/Foo6iMV3tQo/96Sbff8lCAAJ

	As you can see after adding screenfetch, 188 KB was added in /usr directory, and the rest (120 MB) is consumed in
	/var/cache/apt
	/var/lib/apt

to flush persistence files
erase /run/initramfs/memory/changes/changes.dat 
https://groups.google.com/forum/#!searchin/slax-users/memory$2Fchanges%7Csort:date/slax-users/Xc4RODhUsYg/nBL843H2AwAJ

RTFM
	If your device uses FAT filesystem, which is most common on USB flash drives, then all file modifications to Slax itself are saved into a special file changes.dat, which is created on your boot device in /slax/changes/ directory, and grows automatically in size up to 4GB. 
	
	If your boot device uses a native Linux filesystem such as ext4, then the changed files are saved natively to /slax/changes/ directory without any need for intermediate changes.dat file. 
	
	The file changes.dat is designed to work even on FAT filesystems, which are commonly used on most USB flash drives. Unfortunately FAT is limited to 4GB file size; for that reason, persistent changes can't grow more. In case you need to save more, please format your storage drive with some Linux filesystem such as EXT4 or BTRFS and install Slax to it. 
	
	Slax will be able to save changes natively and will be limited only by the actual capacity of your device. https://www.slax.org/starting.php

## bundle script
https://groups.google.com/forum/#!topic/slax-users/5dCZbzfpAjA

my latest version of apt2sb.sh, mostly provided originally by Tomas.  
builds bundles based just on the standard 0* bundles from Slax.  
also call cleanup.sh (again, pirated from Tomas and just updated to take a parameter for the starting directory) but that is optional.  I think it saves a little space.

The apt2sb.sh script takes one or more parameters which are names of packages to download and convert to a bundle.  The bundle is named whatever the name of the first package on the command line, and stored in "/".  If more than one parameter is on the command line, those packages are combined  into the same bundle.

## google group spins

https://groups.google.com/forum/#!topic/slax-users/5dCZbzfpAjA

1. Pat's apt2sb is located in /usr/bin on the core sb module, instead of making a separate module for this, just so the script can be run by default.
2. There is an extra module, 06-package-tools.sb, where Snapd, Flatpak and Synaptic are installed on it. It's not in the modules folder, but I figured it would be just as important as the other six modules.

Jesse.

## known unknowns

https://groups.google.com/forum/#!topic/slax-users/uiEkXQp5How
Tomas M 	
Jul 23
Re: [slax-users] Re: root user session
Guest cannot run srartx.
I am not sure why.
If you find out a fix for that, I am willing to add it to Slax, so please share it here

I think that setting setuid bit for xorg binary is OK, so I'll add it in next Slax release. 

