Configuration files for my shell environment.

# Installation

1. Make sure the following prerequisites are installed (package names are for
   Debian/Arch). In any case:

   - The [stow] package for "installation" of the config files.
   - Obviously, the bash, git, tmux, and vim/neovim packages.
   - The bash-completion package for Bash tab completion.
   - The ripgrep package for the rg search tool.

   For Haskell development:

   - The GHCup installer according to the instructions on its [website][ghcup].
   - GHC, cabal and HLS via GHCup.

   For Python development:

   - The pipenv/python-pipenv (packaging, dependency management, virtual
     environments), flake8 (linting), python3-autopep8/autopep8
     (auto-formatting) and mypy (static type annotations) packages.

2. Configure terminal emulator (Gnome Terminal, Putty, ...) for use with the
   [Nord][nord] color theme.

3. Clone to `~/.dotfiles/`.

4. Inside the cloned repository, run `stow` for each required set of config
   files to create the respective symlinks in `~`. Example:

   ~~~console
   $ stow bash
   $ stow vim
   $ stow haskell
   ~~~

5. Install the [vim-plug] plugin manager for Vim/Neovim. Then run `:PlugUpdate`
   from inside Vim/Neovim to install all plugins listed in the `.vimrc` or
   `init.vim` file, respectively.

[stow]: https://www.gnu.org/software/stow/
[ghcup]: https://www.haskell.org/ghcup/
[hlint]: https://github.com/ndmitchell/hlint
[ormolu]: https://github.com/tweag/ormolu
[nord]: https://www.nordtheme.com/
[vim-plug]: https://github.com/junegunn/vim-plug

# Random usage notes

## Haskell development

Start new projects:

~~~console
$ mkdir my-project
$ cd my-project
$ cabal init -i
...
$ cabal build
$ cabal run
~~~

See also
<https://schooloffp.co/2020/08/17/whirlwind-tour-of-cabal-for-beginners.html>.

## Python development

Start new projects in a virtual environment:

~~~console
$ cd my-project
$ pipenv install [whatever] # no package just creates a Pipfile
$ pipenv shell
...
$ exit
~~~
