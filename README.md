### ctags
Install https://github.com/universal-ctags/ctags
Move ctags/* to ~/.ctags.d/*

### git
Move git/* to ~/*

### neovim
Move nvim_*/init.vim to ~/.config/nvim/init.vim
Install Plug dep manager
Install dependencies needed

### overcommit
Move .overcommit.yml to project folder

### rubocop
Move .rubocop.yml to project folder

### solargraph
Move ruby_linter_and_tools/.solargraph.yml to ~/.config/solargraph/config.yml

### coc-settings
Move coc-setting.yml to ~/.config/nvim/coc-settings.json

### projections
TODO

### tmux
Move .tmux.conf to ~/

### zsh
Move .zshrc to ~/

### alacritty
Move alacritty.yml to ~/.config/alacritty/*

### bashrc
Move .bashrc to ~/

### For Arch/KDE
yay -S alacritty tmux deno fd xclip python-pynvim ripgrep rust-analyzer
yay -S ttf-ibm-plex ttf-firacode-nerd

### nvidia drivers
https://github.com/korvahannu/arch-nvidia-drivers-installation-guide

sudo pacman -S base-devel linux-headers git --needed
Enable multilib repository
    sudo nano /etc/pacman.conf
Uncomment the following lines by removing the # -character at the start them
    [multilib]
    Include = /etc/pacman.d/mirrorlist

yay -S nvidia-535xx-dkms nvidia-535xx-utils lib32-nvidia-535xx-utils
yay -S nvidia-settings

// For plasma
panel height = 70
inline clock font size 32

// For i3
// Scaling ui
https://horstmann.com/unblog/2023-01-07/index.html

in ~/.Xresources
Xft.dpi: 192

// install fzf via git
// install libinput-gestures (for X11)
// install oh my zsh
// install rvm
