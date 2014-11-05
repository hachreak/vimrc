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

* [**ctrlp.vim**] Finder for Vim
  1. <c-p> - invoke CtrlP in find file mode
  2. <c-left/right arrow> - to navigate the result list.
  3. <c-t> or <c-v> (vertical), <c-x>, <c-o>  - to open the selected entry in a new tab or in a new split.
* [**delimitMate**] This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.
* [**python-mode**] Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
  1. \b - add breakpoint
  2. K  - show documentation for current word (selection)
  3. <c-space> - for autocompletion
  4. <c-c>g - open definition
  5. [[ - Jump to previous class or function (normal, visual, operator modes)
  6. ]] - Jump to next class or function (normal, visual, operator modes)
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
