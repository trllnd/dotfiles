echo "\$UP' G ================================================================="

dir=$(realpath $(dirname $0))

mkdir -v -p ~/.Xresources.d
mkdir -v -p ~/.config/i3

ln -v -s -f -t ~               $dir/.xinitrc
ln -v -s -f -t ~/.Xresources.d $dir/.Xresources.d/*
ln -v -s -f -t ~               $dir/.Xresources
ln -v -s -f -t ~/.config/i3    $dir/.config/i3/*
ln -v -s -f -t ~               $dir/.i3blocks.conf
ln -v -s -f -t ~               $dir/.vimrc
ln -v -s -f -t ~               $dir/.zshrc

