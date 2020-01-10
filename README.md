Configuration files for my shell environment.

# Installation

 1. Make sure the following prerequisites are installed (package names are for
    Debian). In any case:

      * The [stow] package for "installation" of the config files.
      * Obviously, the bash, git, tmux, and vim packages.
      * The bash-completion package for Bash tab completion.

    For Haskell development:

      * The [Stack][stack] tool (note that the Debian package may well be
        outdated, so prefer direct download). Then, via stack, the [hlint]
        (linting) and [hindent] (auto-formatting) packages.

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
[stack]: https://docs.haskellstack.org/
[hlint]: https://github.com/ndmitchell/hlint
[hindent]: https://github.com/commercialhaskell/hindent
[vim-plug]: https://github.com/junegunn/vim-plug

# Random usage notes

## Haskell development

Start new projects in a virtual environment:

    $ stack new my-project simple
    $ cd my-project
    ...
    $ stack build
    $ stack exec my-project # or other binary name as specified in cabal file
    $ stack clean

Configure global (not project-specific) settings like which snapshot to use when
calling `stack ghci` outside a project in `~/.stack/global-project/stack.yaml`.

## Python development

Start new projects in a virtual environment:

    $ cd my-project
    $ pipenv install [whatever] # no package just creates a Pipfile
    $ pipenv shell
    ...
    $ exit
