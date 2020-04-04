# LinuxSetup

```bash
git clone https://gqqnbig@github.com/gqqnbig/LinuxSetup.git --depth=1
ln LinuxSetup/.vimrc .vimrc
sudo cp LinuxSetup/vimrc.local /etc/vim/


git config --global user.email 'gqqnb2005@gmail.com'
git config --global user.name 'gqqnbig'
#let git remember my password
git config --global credential.helper cache 

git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
# follow https://github.com/magicmonty/bash-git-prompt#via-git-clone
GIT_PROMPT_THEME=Single_line_Dark # 颜色对比度高，但可以修改一下去掉host
```
