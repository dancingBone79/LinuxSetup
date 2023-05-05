# LinuxSetup

```bash
sudo apt update
sudo apt install --yes git vim zsh

git clone https://gqqnbig@github.com/gqqnbig/LinuxSetup.git --depth=1
ln -s LinuxSetup/.vimrc .vimrc
sudo cp LinuxSetup/vimrc.local /etc/vim/

git config --global user.email 'gqqnb2005@gmail.com'
git config --global user.name 'gqqnbig'
#let git remember my password. Switch to cache if on a public computer.
git config --global credential.helper store
git config --global core.editor vim

# oh my zsh will move .zsh to a backup file
REPO=gqqnbig/LinuxSetup-ohmyzsh sh -c "$(wget https://raw.github.com/gqqnbig/LinuxSetup-ohmyzsh/master/tools/install.sh -O -)" "" --unattended
# unattended mode doesn't change default shell,
# so we change it here.
chsh -s /bin/zsh

cd ~
mv .zshrc ~/LinuxSetup

ln -s ~/LinuxSetup/.zshrc ./
ln -s ~/LinuxSetup/.p10k.zsh ./

# Install powerlevel10k
cd LinuxSetup/powerlevel10k
git submodule init
git submodule update --depth=1
ln -s ~/LinuxSetup/powerlevel10k ~/.oh-my-zsh/custom/themes/powerlevel10k

sudo reboot

# 锁屏时间30分钟
gsettings set org.gnome.desktop.session idle-delay 1800
```
