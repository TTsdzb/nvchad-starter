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

### Termux

```sh
pkg install lua-language-server stylua rust-analyzer taplo
```

```sh
npm i -g vscode-langservers-extracted @vtsls/language-server bash-language-server yaml-language-server
```

```sh
pip install basedpyright
```

如果构建依赖 cmake 安装时报错，先安装系统 cmake 包：

```sh
pkg install cmake
```

## 安装高亮规则

```
:TSInstall bash c c_sharp cmake cpp css csv cuda dockerfile gitcommit gitignore glsl html ini java json jsonc lua make markdown nginx passwd powershell python regex requirements rust slint sql ssh_config toml typescript vue wgsl wgsl_bevy xml yaml
```

# Credits

1) Lazyvim starter <https://github.com/LazyVim/starter> as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!
