**This repo is supposed to be used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# 使用

```sh
git clone https://github.com/TTsdzb/nvchad-starter ~/.config/nvim && nvim
```

root 用户（这个配置更简单一些）：

```sh
git clone --branch root https://github.com/TTsdzb/nvchad-starter ~/.config/nvim && nvim
```

在完成之后运行以下命令：

```
:MasonInstallAll
```

```
:TSInstall bash c c_sharp cmake cpp css csv cuda dockerfile gitcommit gitignore glsl html ini java json jsonc lua make markdown nginx passwd powershell python regex requirements rust slint sql ssh_config toml typescript vue wgsl wgsl_bevy xml yaml
```

# Credits

1) Lazyvim starter <https://github.com/LazyVim/starter> as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!
