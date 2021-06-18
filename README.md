# LinuxSetup

```bash
sudo apt update
sudo apt-get install --yes git vim zsh

git clone https://gqqnbig@github.com/gqqnbig/LinuxSetup.git --depth=1
ln -s LinuxSetup/.vimrc .vimrc
sudo cp LinuxSetup/vimrc.local /etc/vim/

git config --global user.email 'gqqnb2005@gmail.com'
git config --global user.name 'gqqnbig'
#let git remember my password. Switch to cache if on a public computer.
git config --global credential.helper store
git config --global core.editor vim

ln -s ~/LinuxSetup/.zshrc ./
ln -s ~/LinuxSetup/.p10k.zsh ./
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

sudo reboot

# 锁屏时间30分钟
gsettings set org.gnome.desktop.session idle-delay 1800
```
