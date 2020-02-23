# hi

## Recommended Software
* yadm ( the easy way to manager dotfile) ```yay -Syu yadm-git```
* antibody ( zsh package manager) ```curl -sfL git.io/antibody | sh -s - -b /usr/local/bin```
* fzf `yay -S fzf`
* AG command ([The silver searcher](https://github.com/ggreer/the_silver_searcher)) `yay -S the_silver_searcher`
* exa (advandce ls) `yay -S exa`
* vim-plug  ( vim plugin manager) `yay -S vim-plug`
* gvim  (copy, paste clipboard in vim) `yay -S gvim`
* ctags  ( Vim tagbar require) `yay -S ctags`
* tmux `yay -S tmux`
* termite (terminal support Fire Code font) `yay -S termite`
* xcwd (print current directory - support open new termianl from here) `yay -S xcwd-git
* sc-im (open csv) `yay -S sc-im`
* rofi (alternative dmenu) `yay -S rofi`
* zsh `yay -S zsh`
* nerd-fonts-complete #
* xcape (for remap key) `yay -S xcape`
* xorg-xmodmap (for  remap key) `yay -S xorg-xmodmap`
* autorandr ( quick save and apply xrand ) `yay -S autorandr`
* zathura ( document viewer ) #
install powerline fonts:
sudo pacman -S powerline-fonts-git
reference font & symbols in .Xdefaults:
URxvt.font: xft:Source\ Code\ Pro\ for\ Powerline:pixelsize=12,xft:Powerlinesymbols
issue should be resolved upon next run of URXVT

* github.com/antonmedv/red ( terminal log analysis tools )
* xflux-gui-git `yay -S xflux-gui-git`

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

### Audio not wokring
```
    yay -S  pulseaudio
    yay -S  pavucontrol
    # enable pulseaudio 
    systemctl --user start pulseaudio.service

```

### Bluetooth audio not working

* install pulseaudio-bluetooth `yay -S pulseaudio-bluetooth`
* restart:`pulseaudio -k pulseaudio --start`

### Time incorrect 
```
sudo pacman -S ntp
sudo timedatectl set-ntp true
```

### Telegram ibus not wokring

~/.local/share/applications/telegramdesktop.desktop

```
[Desktop Entry]
Version=1.0
Name=Telegram Desktop
Comment=Official desktop application for the Telegram messaging service
TryExec=/usr/bin/telegram-desktop
Exec=env QT_IM_MODULE=ibus /usr/bin/telegram-desktop -- %u
Icon=telegram
Terminal=false
StartupWMClass=TelegramDesktop
Type=Application
Categories=Network;InstantMessaging;Qt;
MimeType=x-scheme-handler/tg;
Keywords=tg;chat;im;messaging;messenger;sms;tdesktop;
X-GNOME-UsesNotifications=true
X-Desktop-File-Install-Version=0.24
```


### Ibus teni

For Arch Linux, edit /etc/pacman.conf and add the following (note that the order of repositories in pacman.conf is important, since pacman always downloads the first found package):

```
[home_vietnamese_Arch]
SigLevel = Never
Server = https://download.opensuse.org/repositories/home:/vietnamese/Arch/$arch
```

Then run the following as root

```
pacman -Syu
pacman -S home_vietnamese_Arch/ibus-teni
```

From build:
http://widehat.opensuse.org/repositories/home:/vietnamese/Arch/x86_64/ibus-teni-1.5.2-1-any.pkg.tar.xz
sudo pacman -U ibus-teni-<version>.tar.gz
