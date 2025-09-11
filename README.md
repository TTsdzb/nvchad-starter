**This repo is supposed to be used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# 使用

```sh
git clone https://github.com/TTsdzb/nvchad-starter ~/.config/nvim && nvim
```

## 安装依赖

### mason.nvim

```
:MasonInstallAll
```

```
:MasonInstall tree-sitter-cli ty
```

### Termux

```sh
pkg install tur-repo
```

```sh
pkg install lua-language-server stylua rust rust-analyzer taplo tree-sitter unzip uv zip
```

```sh
npm i -g vscode-langservers-extracted typescript-language-server typescript bash-language-server yaml-language-server prettier
```

```sh
uv tool install ty
```

如需 Java 支持，需要手动安装 [Eclipse JDT LS](http://download.eclipse.org/jdtls/snapshots/?d)。点击链接下载，解压后将其中的 `bin` 目录添加到 `PATH` 环境变量中。

以下大概不会在 Termux 用到，可以不装：

```sh
pkg install texlab
```

```sh
cargo install --git https://github.com/wgsl-analyzer/wgsl-analyzer.git wgsl_analyzer
```

# Credits

1. Lazyvim starter <https://github.com/LazyVim/starter> as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!
