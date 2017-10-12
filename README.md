Configuration files for my shell environment.

Installation:

 1. Make sure the following prerequisites are installed:

      * The [stow] package for "installation" of the config files.
      * The bash-completion package for Bash tab completion.

 2. Clone to `~/.dotfiles/`.

 3. Inside the cloned repository, run `stow` for each required set of config
    files to create the respective symlinks in `~`. Example:

        $ stow bash
        $ stow vim

 4. Install the [vim-plug] plugin manager for Vim. Then run `:PlugUpdate` from
    inside Vim to install all plugins listed in the `.vimrc` file.

[stow]: https://www.gnu.org/software/stow/
[vim-plug]: https://github.com/junegunn/vim-plug
