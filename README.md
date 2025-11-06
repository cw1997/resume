# 简历（Resume）

本仓库用于存放我使用 LaTeX 语法编写的简历源码、模板与自动化构建流程。通过自定义的
`resume.cls` 模板与 GitHub Actions 自动化 CI 流程，可以自动生成具有简洁排版风格的 PDF 简历。

## 构建

该 Latex 源码使用 xelatex 用于生成内嵌中文字体的 PDF 文件

因此执行两次

    xelatex -interaction=nonstopmode -output-directory=./dist main.tex

即可构建成功。

之所以执行两次，是为了确保生成带有交叉引用的 PDF 书签目录。

## 项目结构说明

    .
    ├── .github/
    │   └── workflows/
    ├── .gitignore
    ├── .latexmkrc
    ├── LICENSE
    ├── README.md
    ├── build.sh
    ├── main.tex
    └── resume.cls

### `.github/workflows/`

存放 GitHub Actions 自动化构建配置文件 `xelatex.yml`。

该文件使用基于 `texlive/texlive:latest-full` 这个 docker image 启动的容器环境，
执行 xelatex 将 latex 源码编译出 PDF 文件。
并且将构建产物上传至 GitHub 仓库中的 Release 中。

### `.gitignore`

忽略不需要提交的文件。

### `.latexmkrc`

LaTeXmk 配置文件。

### `LICENSE`

开源许可证。

### `README.md`

项目说明文件。

### `build.sh`

构建脚本。

### `main.tex`

简历主体内容。

### `resume.cls`


## 贡献与反馈

欢迎提交 PR 或 Issue。
