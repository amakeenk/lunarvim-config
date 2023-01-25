#!/bin/bash -e

home_dir="${HOME}"

sudo apt-get update
sudo apt-get install -y neovim python3-module-neovim tree-sitter-cli ripgrep fd rust-cargo npm node gcc-c++

curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh -o ${TMP}/lvim_install.sh
chmod +x ${TMP}/lvim_install.sh

${TMP}/lvim_install.sh

sudo ln -sv ${home_dir}/.local/bin/lvim /usr/bin/lvim

