# gjoavim

## What is gjoavim?

gjoavim is my personal Vim configuration that I've been curating over the past 5+ years.

## Installation guide

1. My configuration uses the plugin manager [Vundle](https://github.com/VundleVim/Vundle.vim). You will need to run
  
  ```bash
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  ```
  
  before proceeding if you don't already have Vundle installed.
  
2. You are <ins>**strongly recommended**</ins> to fork this repository. This step is especially important if you want to sync your Vim configuration across multiple devices. Even if you don't want to do this now, you may want the option to do so in the future.

3. If you already have a `.vimrc` in your home directory, rename it to something else (e.g. `.vimrc2`).
4. Create a symbolic link to `YOUR_PATH_TO_FORK/vimrc` by running:
```bash
ln -s YOUR_PATH_TO_FORK/vimrc ~/.vimrc
```
The reason for doing this is that you will never (and definitely should not) edit `~/.vimrc` directly, but will instead edit `YOUR_PATH_TO_FORK/vimrc`. By doing so, you can easily sync changes across your devices with a simple `git pull`. It took me an embarassingly long amount of time for me to realise to do this myself and, as a result, I had different Vim configurations on my laptop and home computer (trust me, you don't want this).

5. If you plan on using the [UltiSnips](https://github.com/SirVer/ultisnips) plugin, create a symbolic link to `YOUR_PATH_TO_FORK/my_snips` by running
```bash
ln -s YOUR_PATH_TO_FORK/my_snips ~/.vim/my_snips
```
In a similar vein as the discussion above, this will sync your snippets across multiple devices. You won't (and should not) edit `~/.vim/my_snips`, but instead edit 
`YOUR_PATH_TO_FORK/my_snips`.

> [!IMPORTANT]
> Before proceeding with the next (final) step, you should read the following section on plugins first.

6. Open Vim, then run `:PluginInstall` to install the plugins.

## gjoavim plugins

Below is a list of all of the plugins that (with no changes) will be installed when running `:PluginInstall`.

I've included a brief description of what each plugin is, and you can always visit their repositories for more information.

It's highly likely that some of the plugins listed below are not applicable to your workflow. If you don't want to install a particular plugin, remove the line(s) `Plugin '<plugin I don't want>'` from `YOUR_PATH_TO_FORK/vimrc` before running `:PluginInstall`. You may also have to remove additional lines from `YOUR_PATH_TO_FORK/vimrc` relating to the removed plugin to avoid errors. Moreover, some of these plugins may require additional steps to get them working correctly (refer to the necessary repository for guidance if this is the case).

> [!WARNING]
> Though I use these plugins myself, I cannot guarantee their security nor functionality. By running `:PluginInstall`, you acknowledge that you are installing them at your own risk.

### Plugin list

- [NERDTree](https://github.com/preservim/nerdtree) - File explorer 
- [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin) - Git integration for NERDTree
- [indentLine](https://github.com/Yggdroot/indentLine) - Vertical lines displayed for line indents
- [vim-easymotion](https://github.com/easymotion/vim-easymotion) - Powerful navigation tool
- [fzf](https://github.com/junegunn/fzf) - Fuzzy finder
- [everforest](https://github.com/sainnhe/everforest) - Colour theme
- [vim-airline](https://github.com/vim-airline/vim-airline) - Visual bar showing useful information
- [UltiSnips](https://github.com/SirVer/ultisnips) - Powerful macro building tool
- [vimtex](https://github.com/lervag/vimtex) - LaTeX integration
- [vim-cool](https://github.com/romainl/vim-cool) - Better highlighting
- [goyo.vim](https://github.com/junegunn/goyo.vim/) - Nice writing mode
- [rainbow](https://github.com/luochen1990/rainbow) - Colourful scoped braces
- [vim-devicons](https://github.com/ryanoasis/vim-devicons) - Nice icon support

## Closing remarks

Just to reiterate, make changes to `YOUR_PATH_TO_FORK/vimrc`, not to `~/.vimrc` directly. Failing to do so will lead to diverging configurations across devices and confusion.

Thank you for reading. I hope that you find this repository useful!

## Related projects
Neovim ~~users~~ traitors may be interested in checking out [sonstgennant/config_neovim](https://github.com/sonstgenannt/config_neovim), which was inspired by this repository.
