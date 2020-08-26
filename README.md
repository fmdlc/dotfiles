# dotfiles 🦄
![](https://img.shields.io/badge/Works%20on-OSX-lightgrey) ![https://www.youtube.com/watch?v=SkgTxQm9DWM](https://img.shields.io/badge/nyancat-approved-purple)

My personal dotfiles, all in one place.

![demo](./img/demo.gif)

## Installation

Setup ZSH as your login shell:
``` bash
chsh -s $(which zsh)
```

Clone this repository and inside the created directory, execute:

> ⚠️ **DO NOT** run the setup snippet if you do not fully understand what it does.

```bash
$: ./bootstrap --dry-run
```
And if everything is working as expected:
```bash
$: ./bootstrap
```

It will copy all the prefixed `__` files into your `$HOME` directory

## Content
|File|Description|
|---|---|
|`__curlrc`| cURL configuration.
|`__fzf.zsh`| FuzzyFinder configuration for ZSH
|`__gitconfig`| git global configuration.
|`__hushlogin`| Avoid `'Last login: Mon June 1 …'`
|`__gitignore_global`| git ignorer global configuration.
|`__irssi.conf`| Irssi configuration.
|`__iterm2`| iTerm2 integrations.
|`__iterm2_shell_integrations.zsh`| iTerm2 ZSH integrations script.
|`__k9s`| k9s configuration
|`__oh-my-zsh`| Oh-my-ZSH configuration directory.
|`__psql.rc`| psql configuration.
|`__screenrc`| GNU Screen configuration.
|`__tmux.conf`| tmux configuration.
|`__vim`| Vim configuration, plugins and colorschemes.
|`__vimrc`| Vim configuration
|`__wgetrc`| wget configuration.
|`__zshrc`| ZSH configuration file


> ⚠️ DISCLAMER: Many of these files, are subjects to my username and computer configuration. Update them as needed.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[Apache 2.](./LICENSE)
