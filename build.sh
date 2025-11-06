#!/bin/sh

mkdir -p ./dist
chmod 777 ./dist

xelatex -interaction=nonstopmode -output-directory=./dist main.tex
# Compile twice to ensure the correct cross-references and contents
xelatex -interaction=nonstopmode -output-directory=./dist main.tex
