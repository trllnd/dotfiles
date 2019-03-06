echo "\$UP' G ================================================================="

echo "apt-get install:"
echo "- compton"
echo "- i3"
echo "- i3lock"
echo "- neofetch"
echo "- poweline"
echo "- rofi"
echo "- termite"
echo "- variety"
echo ""

echo "to set theme:"
echo "sudo apt-get install lxappearance gtk-chtheme qt4-qtconfig"

dir=$(realpath $(dirname $0))

mkdir -v -p ~/.config/base16-shell
mkdir -v -p ~/.config/compton
mkdir -v -p ~/.config/i3
mkdir -v -p ~/.config/rofi
mkdir -v -p ~/.config/termite

ln -v -s -f -t ~                      $dir/.i3blocks.conf
ln -v -s -f -t ~                      $dir/.vimrc
ln -v -s -f -t ~                      $dir/.zshrc
ln -v -s -f -t ~/.config/base16-shell $dir/.config/base16-shell/*
ln -v -s -f -t ~/.config/compton      $dir/.config/compton/*
ln -v -s -f -t ~/.config/i3           $dir/.config/i3/*
ln -v -s -f -t ~/.config/rofi         $dir/.config/rofi/*
ln -v -s -f -t ~/.config/termite      $dir/.config/termite/*

