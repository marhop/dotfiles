Configuration files for my shell environment.

# Installation

 1. Make sure the following prerequisites are installed (package names are for
    Debian). In any case:

      * The [stow] package for "installation" of the config files.
      * Obviously, the bash, git, tmux, and vim packages.
      * The bash-completion package for Bash tab completion.

    For Haskell development:

      * The [ghcup] installer (includes ghc and cabal). Then install [hlint]
        (linting) and [hindent] (auto-formatting) with `cabal install`.

    For Python development:

      * The pipenv (packaging, dependency management, virtual environments)
        flake8 (linting), python3-autopep8 (auto-formatting) and mypy (static
        type annotations) packages.

 2. Clone to `~/.dotfiles/`.

 3. Inside the cloned repository, run `stow` for each required set of config
    files to create the respective symlinks in `~`. Example:

        $ stow bash
        $ stow vim
        $ stow haskell

 4. Install the [vim-plug] plugin manager for Vim. Then run `:PlugUpdate` from
    inside Vim to install all plugins listed in the `.vimrc` file.

[stow]: https://www.gnu.org/software/stow/
[ghcup]: https://www.haskell.org/ghcup/
[hlint]: https://github.com/ndmitchell/hlint
[hindent]: https://github.com/mihaimaruseac/hindent
[vim-plug]: https://github.com/junegunn/vim-plug

# Random usage notes

## Haskell development

Start new projects:

    $ mkdir my-project
    $ cd my-project
    $ cabal init -i
    ...
    $ cabal build
    $ cabal run

See also
<https://schooloffp.co/2020/08/17/whirlwind-tour-of-cabal-for-beginners.html>.

## Python development

Start new projects in a virtual environment:

    $ cd my-project
    $ pipenv install [whatever] # no package just creates a Pipfile
    $ pipenv shell
    ...
    $ exit
