# hi

## Recommended Software
* yadm ( the easy way to manager dotfile)
* antibody ( zsh package manager) ```curl -sL git.io/antibody | sh -s```
* fzf
* AG command ([The silver searcher](https://github.com/ggreer/the_silver_searcher))
* exa (advandce ls) #
* vim-plug  ( vim plugin manager) #
* gvim  (copy, paste clipboard in vim) #
* ctags  ( Vim tagbar require) #
* tmux #
* kitty (terminal support Fire Code font) #
* sc-im (open csv #
* rofi (alternative dmenu) #
* zsh #
* nerd-fonts-complete #
* xcape (for remap key) #
* xorg-xmodmap (for  remap key) #
* ibus-teni $ source code
* autorandr ( quick save and apply xrand ) #
* zathura ( document viewer ) #
install powerline fonts:
sudo pacman -S powerline-fonts-git
reference font & symbols in .Xdefaults:
URxvt.font: xft:Source\ Code\ Pro\ for\ Powerline:pixelsize=12,xft:Powerlinesymbols
issue should be resolved upon next run of URXVT

* github.com/antonmedv/red ( terminal log analysis tools )

## Bug 

### KEY error: gpg --recv-key FC918B335044912E

### Enable Hibernate with swapfile

* Time zone
```
# install NTP 
sudo yay -S ntp
# enable NTP
sudo timedatectl set-ntp true
```

* Create swapfile 

```bash
# create swapfile
sudo fallocate -l 1G /swapfile

# Set permission
sudo chmod 600 /swapfile

# Setup a linux swap area
sudo mkswap /swapfile

# Enable the swap
sudo swapon /swapfile

# Edit /etc/fstab add line 
/swapfile swap swap defaults 0 0

# Check swapfile
sudo free -h
```

* Enable hibernate

edit /etc/default/grub and add resume as well as resume_offset kernel parameters
resume=UUID=abcd-efgh contains the UUID of the partition on which the swapfile resides. In most cases the swapfile resides in root, to identify the root parition's UUID run blkid or lsblk -O.
resume_offset=1234 is the offset of the swapfile from the partition start. The offset is the first entry in the physical_offset column of the output of filefrag -v /swapfile.
update grub: grub-mkconfig -o /boot/grub/grub.cfg
example: GRUB_CMDLINE_LINUX_DEFAULT="resume=UUID=75972c96-f909-4419-aba4-80c1b74bd605 resume_offset=1492992"
add the resume module hook to /etc/mkinitcpio.conf:
HOOKS="base udev resume autodetect ...
rebuild the initramfs mkinitcpio -p linux
check if everything works: systemctl hibernate


### Bluetooth audio not working


* install pulseaudio-bluetooth
* restart: pulseaudio -k pulseaudio --start
