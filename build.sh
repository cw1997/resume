#!/bin/bash

# 创建字体链接到系统目录
sudo mkdir -p /usr/share/fonts/custom
sudo ln -sf "$PWD"/fonts/* /usr/share/fonts/custom/

docker run --rm \
  -v "$PWD":/workdir \
  -w /workdir \
  danteev/texlive \
  bash -c "fc-cache -fv && latexmk -xelatex -synctex=1 -interaction=nonstopmode main.tex"

# 清理权限
sudo chown -R $(id -u):$(id -g) .