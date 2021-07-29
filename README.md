# Welcome User :D
This is my onw nvim folder configuration, I hope u like it or can resolve ur issues

## Preview

![](https://github.com/sssimxn/NVim4Win/blob/master/previuw.png)

## Requirements

1. [Git](https://git-scm.com/downloads)
2. [NodeJS](https://nodejs.org/es/download/)
3. [Python3](https://www.python.org/downloads/)
	* [pynvim](https://github.com/neovim/pynvim) 
4. [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim) obviously :)

To install all of this, I prefer use Chocolatey (package manager)
https://chocolatey.org/install

## Some issues 

1. U've Python installed but to windows thats doesn't matter n simply he don't want to exec `> Python` in ur terminal:
All u have to do, is install Python from the Windows Store

2. pynvim provider not found:
Change `> pip3 install pynvim` for `> pip install pynvim` that works for me "haved only Python3 installed" ;)

## Quick Start

Just
```bash
$ git clone https://github.com/sssimxn/NVim4Win.git
```

## Custom Shortcuts

«leader = spacebar»

Vim
> Ctrl + s: Write
> leader + q: Exit
> leader + wq: Write n Exit

> Alt + 2: Next buffer
> Alt + 1: Prev Buffer

> Ctrl + t: New tab

> Ctrl + w: Delete buffer

> leader + bb: View opened buffers

> Shift + k: Resize windows +5 up
> Shift + j: Resize windows -5 downr
> Shift + h: Resize windows +5 left
> Shift + l: Resize windows -5 right

FZF
> Ctrl + 0: Search codelines 
> Ctrl + p: Fuzzy find Files

Nerd Tree
> leader + n: Toggle files explorer

Nerd Tree Commenter
> ++: Comment code blocks/lines 

CoC
> Alt + F2: Rename all word ocurrences

> gf: Go to definition
> gt: Go to type definition
> gh: Go to implementation
> gb: Go to reference

Vim Move
> Alt + k: Move current line/selection up
> Alt + j: Move current line/selection down
> Alt + h: Move current line/selection left
> Alt + l: Move current line/selection right

Maximizer
> leader + f: Maximize cursor window

Extra shortcuts (for fix lag)
> leader + cc: Toggle cursorline
> leader + rr: Toggle relativenumber
