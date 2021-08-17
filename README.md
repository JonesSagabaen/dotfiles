# Jones Dotfiles
Important files for configuring and personalizing the terminal.

Additionally, a _notes_ directory is provided for all important notes about key configs and command descriptions 
surrounding these tools.

## Prerequisite
All of the following will need to be installed before configurations can be done:
* iTerm
* NeoVim
* Plugins defined `.zshrc`  
* NodeJS

# Vim Plugins
NeoVim plugins are managed by `vim-plug`.  Instructions can be found from its [README](https://github.com/junegunn/vim-plug).
Noteable commands however are the commands `:PlugInstall` and `:PlugUpdate` which are to be executed within Vim.

Plugin includes completion tool, [CoC](https://github.com/neoclide/coc.nvim).  Having this tool introduces the requirement of 
having NodeJS installed.  Similar to _vim-plug_, CoC commands are available within Vim using the command `:Coc + <Shift>`.

## Troubleshooting
If errors are occuring with the NeoVim installation, a good command to utilize is `:checkhealth` ([reference](http://vimcasts.org/episodes/neovim-checkhealth/)).
