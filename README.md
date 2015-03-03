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


Options
-------

```bash
  # To force reinstalling of all modules
  laptop> ./deploy.sh -f
  # Help
  laptop> ./deploy.sh -h
```


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

### Module screen

The module needs gnu screen or tmux installed.

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
  - `<c-w>` + `Arrow` - move from a window to another.
  - `<c-o>` - close other windows.
  - `<c-h>`, `<c-j>`, `<c-k>`, `<c-l>` - simplify the move from a window to another window.
  - `:reg` - see nnamed registers.
  - `:Np` - paste the Nth register's content.
  - `y` or `d` or `c` + `/VALUE<Enter>` - copy or delete or change from here to first occurrence of `VALUE`.
  - `y` or `d` or `c` + `?VALUE<Enter>` - copy or delete or change from the first occurrence of `VALUE` to here.
  - `cNw` - change next N words (delete next N words and enter in `Insert mode`).
  - `:copen` - open the QuickFix window.
  - `:cnext` / `cprev` - move into the QuickFix window.
* [**tricks**]
  - `:%!column -t` - formatting a table of values.
  - `:%!sort -kN` - sort table by column N.
* [**CmdlineComplete**] complete command-line (: / etc.) from the current file
  - Type /ele and press Ctrl-P. So long as "elephant" is in the buffer, press <c-p> and you will get "ele" completed into "elephant".
* [**MatchTagAlways**] always highlights the XML/HTML tags that enclose your cursor location.
* [**YouCompleteMe**] a code-completion engine for Vim.
* [**agit**] Sow repository history and commit details at the same time.
  - `:Agit` - Show logs.
  - `:AgitFile` - Show logs of the opened file.
* [**ctrlp.vim**] Finder for Vim
  - `<c-p>` - invoke CtrlP in find file mode
  - `<c-left/right arrow>` - to navigate the result list.
  - `<c-t>` or `<c-v>` (vertical), `<c-x>`, `<c-o>`  - to open the selected entry in a new tab or in a new split.
  - `<c-p>`, filename:25 - to open file at line 25
  - `<c-d>`- to switch to filename search instead of full path
* [**ctrlp-funky**] It simply navigates and jumps to function definitions.
* [**delimitMate**] This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.
* [**emmet-vim**] Vim plug-in which provides support for expanding abbreviations similar to emmet.
  - Type abbreviation as `'div>p#foo$*3>a'` and type `Ctrl-y + ,`.
* [**GoldenView.Vim**] Always have a nice view for vim split windows!
  - `:ToggleGoldenViewAutoResize` - To toggle the auto resize.
* [**gundo.vim**] Graph your Vim undo tree in style.
  - `<Leader>u` - Toggle gundo interface.
  - `<CR>` on a state - it will revert the contents.
  - `p` on a state - preview window show the diff between your current state and the selected state.
* [**mru**] Most Recently Used (MRU) Vim Plugin
  - `mr` - Open list of recent files opened.
    + `o` - Open the file in a new horizontal window.
    + `O` - Open the file in a new vertical window.
    + `u` - Update file list.
    + `<NUMBER>o` - Open next `<NUMBER>` files.
    + `t` - Open file in a new tab (If the file is already opened in a window in the current or in another tab, then the cursor is moved to that tab).
  - `:MRU text` - Display only file names matching "text" in them.
  - `:MRU <Tab>` - Autocompleting name. Then, `<Enter>` to open in a new window.
  - `:MRU text<C-d>` - Display list names matching "text".
* [**nerdcommenter**] Vim plugin for intensely orgasmic commenting
  - `<Leader>cc` - comment line
  - `[num]<Leader>cc` - comment [num] lines
  - `<c-c>` (normal mode) - toggle comment
* [**nerdtree**]
  - :NERDTree - open nerdtree
    - `i` - Open the selected file in a horizontal split window.
    - `s` - Open the selected file in a vertical split window.
    - `I` - Toggle hidden files.
    - `R` - Refresh the tree, useful if files change outside of Vim.
    - `?` - Toggle NERD Tree's quick help.
    - `mo` - To create a new file in selected directory.
  - `vim [directory]` - open nerdtree
  - `<Leader>n` - toggle nerdtree
  - `<Leader>t` - open nerdtree and find the current file in the tree
* [**nerdtree-git-plugin**] A plugin of NERDTree showing git status.
* [**open-browser**] Open URI with your favorite browser.
* [**open-browser-github.vim**] Open GitHub URL of current file, etc. from Vim editor.
  - `:OpenGithubFile` - Opens current files URL in github.com.
  - `:'<,'>OpenGithubFile` - Opens current files highlighted place in github.com.
  - `:OpenGithubFile PATH/TO/FILE` - Opens a specific file in github.com.
  - `:OpenGithubIssue 1` - Opens current repositories Issue #1.
  - `:OpenGithubIssue 1 tyru/open-browser.vim` - Opens a specific repositories Issue #1.
  - `:OpenGithubIssue` - Opens current repositories Issue List.
  - `:OpenGithubIssue tyru/open-browser.vim` - Opens a specific repositories Issue list.
  - `:OpenGithubPullReq` - The same of Issue, but this time open pulls page.
* [**python-mode**] Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
  - `<Leader>b` - add breakpoint
  - `K`  - show documentation for current word (selection)
  - `<c-space>` - for autocompletion
  - `<c-c>g` - open definition
  - `[[` - Jump to previous class or function (normal, visual, operator modes)
  - `]]` - Jump to next class or function (normal, visual, operator modes)
  - `zz` - Toggle fonding
  - `<Leader>a` - Fix PEP8 errors in current buffer automatically
* [**screen**] Simulate a split shell in vim using gnu screen or tmux.
  - `:ScreenShell yourcommand` - Run your command in a shell.
  - `:ScreenShellReopen` - If you've started a shell using `:ScreenShell` or `:ScreenShellVertical` and exit that shell manually (^D, $ exit, etc) without running `:ScreenQuit`, then `:ScreenShellReopen` will re-open that shell again for you.
  - `<c-b>` + `Arrow` - To move cursor into the shell.
  - `:ScreenSend` - Send the visual selection or the entire buffer contents to the running gnu.
  - `IPython` - Start ipython on a shell.
  - `<c-b>[` - Scroll the tmux/screen window.
* [**tagbar**] Vim plugin that displays tags in a window, ordered by scope.
  - `tt` - Enable tagbar
* [**vim-airline**] lean & mean status/tabline for vim that's light as air
* [**vim-colors-solarized**] Precision colorscheme for the vim text editor.
* [** vim-expand-region**] allows you to visually select increasingly larger regions of text.
  - Press + to expand the visual selection and _ to shrink it (*not use keypad*).
* [**Vim-fugitive**] Git wrapper
  - `:Gbrowse` - To open the current file on GitHub, with optional line range (try it in visual mode!)
  - `:Ggrep` - To search the work tree (or any arbitrary commit) with git grep.
  - `:Gmove` - Does a `git mv` on a file and simultaneously renames the buffer.
  - `:Gremove` - Does a `git rm` on a file and simultaneously deletes the buffer.
  - `:Gblame` - Brings up an interactive vertical split with `git blame` output. Press enter on a line to edit the commit where the line changed, or `o` to open it in a split. When you're done, use ``:Gedit` in the historic buffer to go back to the work tree version.
* [**vim-gitgutter**] Vim Git Gutter is a Vim plugin which shows a git diff in the 'gutter' (sign column).
  - `<Leader>g` - (On the row modified) Preview the hunk the cursor is in.
* [**vim-javascript**] Vastly improved Javascript indentation and syntax support in Vim.
* [**vim-move**] Plugin to move lines and selections up and down.
  - `<C-Up>` - move the rows up.
  - `<C-Down>` - mode the rows down.
* [**vim-multiple-cursors**] True Sublime Text style multiple selections for Vim.
  - `<C-n>` - Activate multiple selection and select next.
  - `<S-n>` - Skip next.
  - `<C-m>` - Go back to the previous virtual cursor location.
  - `<ESC>` - To exit back to regular Vim.
  - `v` - Start to work on multiple selections.
* [**vim-pathogen**] It makes it super easy to install plugins.
* [**vim-phpqa**] PHP QA tools for Vim
