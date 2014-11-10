vimrc
=====

Personal vim configurations.

You can found general settings in `bundle/config/plugin/config.vim`
and plugins settings in `bundle/config/plugin` directory.


Install
-------

Clone this repo:

```bash
  laptop> git clone https://github.com/hachreak/vimrc.git
  laptop> cd vimrc
  laptop> ./deploy.sh
```

The script backup your .vimrc and .vim and then install the
configuration in your environment.


Extra Installation
------------------

To be able to use the module *tagbar*, you need to install *exuberant*.

With apt-get:

```bash
sudo apt-get install exuberant-ctags
```

With yum:

```bash
sudo yum install ctags-etags
```

Extend configurations
---------------------

Add submodule or plugins, in your `repos` directory:

```bash
  laptop> git submodule add git://github.com:username/*[plugin]*.git bundle/*[plugin]*
```

Now, you can add specific configuration of the module here:

```bash
  laptop> vim bundle/config/plugin/*[plugin]*.vim
```


Plugin list and shortcuts
-------------------------

I recommend reading the docs of these plugins to understand them better!

* [**console**] Console shortcuts
  1. v - open vim
* [**default**] General shortcut
  1. <c-t> - Open new tab
  2. <c-q> - Close tab
  3. >> - Increase identation
  4. << - Decrease identation
  5. Y - copy to end of line
  6. :w!! - Allow saving of files as sudo when I forgot to start vim using sudo
  7. <Leader> is configured as \
* [**ctrlp.vim**] Finder for Vim
  1. <c-p> - invoke CtrlP in find file mode
  2. <c-left/right arrow> - to navigate the result list.
  3. <c-t> or <c-v> (vertical), <c-x>, <c-o>  - to open the selected entry in a new tab or in a new split.
  4. <c-down arrow> - See all files
  5. <c-p> => filename:25 - to open file at line 25
* [**delimitMate**] This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.
* [**python-mode**] Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
  1. \b - add breakpoint
  2. K  - show documentation for current word (selection)
  3. <c-space> - for autocompletion
  4. <c-c>g - open definition
  5. [[ - Jump to previous class or function (normal, visual, operator modes)
  6. ]] - Jump to next class or function (normal, visual, operator modes)
  7. zz - Toggle fonding
* [**vim-pathogen**] It makes it super easy to install plugins.
* [**vim-colors-solarized**] Precision colorscheme for the vim text editor.
* [**emmet-vim**] Vim plug-in which provides support for expanding abbreviations similar to emmet.
  1. Type abbreviation as 'div>p#foo$*3>a' and type |<C-Y>,|.
* [**nerdtree**]
  1. :NERDTree - open nerdtree
    - i: Open the selected file in a horizontal split window
    - s: Open the selected file in a vertical split window
    - I: Toggle hidden files
    - R: Refresh the tree, useful if files change outside of Vim
    - ?: Toggle NERD Tree's quick help
  2. vim [directory] - open nerdtree
  3. nt - toggle nerdtree
* [**CmdlineComplete**] complete command-line (: / etc.) from the current file
 1. Type /ele and press Ctrl-P. So long as "elephant" is in the buffer, press <c-p> and you will get "ele" completed into "elephant".
* [**nerdcommenter**] Vim plugin for intensely orgasmic commenting
  1. \cc - comment line
  2. [num]\cc - comment [num] lines
  3. \c<space> - toggle comment
* [**snipmate.vim**] It aims to be a concise vim script that implements some of TextMate's snippets features in Vim.
  1. Example: for<tab>
* [**tagbar**] Vim plugin that displays tags in a window, ordered by scope.
  1. tt - Enable tagbar
* [**mru**] Most Recently Used (MRU) Vim Plugin
  1. mr - Open list of recent files opened
* [**gundo.vim**] Graph your Vim undo tree in style.
  1. <Leader>u - Toggle gundo interface.
  2. <CR> on a state - it will revert the contents.
  3. *p* on a state - preview window show the diff between your current state and the selected state.
