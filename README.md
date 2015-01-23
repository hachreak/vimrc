vimrc
=====

Personal vim configurations.

You can found general settings in `bundle/config/plugin/config.vim`
and plugins settings in `bundle/config/plugin` directory.


Install
-------

Clone this repo and deploy:

```bash
  laptop> git clone https://github.com/hachreak/vimrc.git
  laptop> cd vimrc
  laptop> ./deploy.sh
```

The script backup your .vimrc and .vim and then install the
configuration in your environment.


Upgrade
-------

Execute undeploy script and install again:

```bash
  laptop> cd vimrc
  laptop> ./undeploy.sh
  laptop> git fetch origin
  laptop> git merge --ff-only origin/master
  laptop> ./deploy.sh
```


Uninstall
---------

Execute undeploy script:

```bash
  laptop> cd vimrc
  laptop> ./undeploy.sh
```


Extra Installation
------------------

### Module tagbar

To be able to use the module *tagbar*, you need to install *exuberant*.

With apt-get:

```bash
sudo apt-get install exuberant-ctags
```

With yum:

```bash
sudo yum install ctags-etags
```

### Copy/Paste functionality

To use *Copy/Paste* functionality, Vim should be compiled with support for the +clipboard.
To know if is enabled, try: `vim --version|grep clipboard`.

If it's not enabled, you can install `vim-gtk`.


### Module YouCompleteMe

You have to install *cmake* and *python-dev*.

With apt-get:

```bash
sudo apt-get install cmake python-dev
```

With yum:

```bash
sudo yum install cmake python-devel
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
  - `v` - open vim
* [**default**] General shortcut
  - `<c-t>` - Open new tab
  - `<c-q>` - Close tab
  - `>>` - Increase identation
  - `<<` - Decrease identation
  - `Y` - copy to end of line
  - `:w!!` - Allow saving of files as sudo when I forgot to start vim using sudo
  - `<Leader>` is configured as \
  - `=` - will correct alignment of code
  - `<c-v>` (visual mode) - selects columns
  - `<c-x>` (insert mode) - cut selected text ( support the clipboard)
  - `<c-c>` (insert mode) - copy selected text ( support the clipboard)
  - `<c-v>` (insert mode) - paste selected text ( support the clipboard)
* [**ctrlp.vim**] Finder for Vim
  - `<c-p>` - invoke CtrlP in find file mode
  - `<c-left/right arrow>` - to navigate the result list.
  - `<c-t>` or `<c-v>` (vertical), `<c-x>`, `<c-o>`  - to open the selected entry in a new tab or in a new split.
  - `<c-p>`, filename:25 - to open file at line 25
  - `<c-d>`- to switch to filename search instead of full path
* [**delimitMate**] This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.
* [**python-mode**] Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
  - `<Leader>b` - add breakpoint
  - `K`  - show documentation for current word (selection)
  - `<c-space>` - for autocompletion
  - `<c-c>g` - open definition
  - `[[` - Jump to previous class or function (normal, visual, operator modes)
  - `]]` - Jump to next class or function (normal, visual, operator modes)
  - `zz` - Toggle fonding
* [**vim-pathogen**] It makes it super easy to install plugins.
* [**vim-colors-solarized**] Precision colorscheme for the vim text editor.
* [**emmet-vim**] Vim plug-in which provides support for expanding abbreviations similar to emmet.
  - Type abbreviation as `'div>p#foo$*3>a'` and type |`<C-Y>,`|.
* [**nerdtree**]
  - :NERDTree - open nerdtree
    - `i`: Open the selected file in a horizontal split window
    - `s`: Open the selected file in a vertical split window
    - `I`: Toggle hidden files
    - `R`: Refresh the tree, useful if files change outside of Vim
    - `?`: Toggle NERD Tree's quick help
  - `vim [directory]` - open nerdtree
  - `nt` - toggle nerdtree
* [**CmdlineComplete**] complete command-line (: / etc.) from the current file
  - Type /ele and press Ctrl-P. So long as "elephant" is in the buffer, press <c-p> and you will get "ele" completed into "elephant".
* [**nerdcommenter**] Vim plugin for intensely orgasmic commenting
  - `<Leader>cc` - comment line
  - `[num]<Leader>cc` - comment [num] lines
  - `<c-c>` (normal mode) - toggle comment
* [**snipmate.vim**] It aims to be a concise vim script that implements some of TextMate's snippets features in Vim.
  - Example: `for<tab>`
* [**tagbar**] Vim plugin that displays tags in a window, ordered by scope.
  - `tt` - Enable tagbar
* [**mru**] Most Recently Used (MRU) Vim Plugin
  - `mr` - Open list of recent files opened
* [**gundo.vim**] Graph your Vim undo tree in style.
  - `<Leader>u` - Toggle gundo interface.
  - `<CR>` on a state - it will revert the contents.
  - `p` on a state - preview window show the diff between your current state and the selected state.
* [**vim-phpqa**] PHP QA tools for Vim
* [**vim-gitgutter**] Vim Git Gutter is a Vim plugin which shows a git diff in the 'gutter' (sign column).
  - `<Leader>g` - (On the row modified) Preview the hunk the cursor is in.
