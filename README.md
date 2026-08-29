# dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level
directory is a *package* whose contents are symlinked into place.

## Install

```sh
git clone git@github.com:codyhan94/dotfiles.git ~/dotfiles
cd ~/dotfiles
make            # everything, or:
make zsh vim    # just these
```

Or drive stow directly. Run it from inside `~/dotfiles`; stow's default target
is the parent of the current directory, so `~` is implied:

```sh
stow zsh
```

## Packages

| Package     | Installs to  | In `make all` |
| ----------- | ------------ | ------------- |
| `git`       | `~`          | yes           |
| `ipython`   | `~`          | yes           |
| `vim`       | `~`          | yes           |
| `zsh`       | `~`          | yes           |
| `bin`       | `~/bin`      | yes           |
| `spacemacs` | `~`          | no            |
| `private`   | —            | no            |

### The `bin` exception

`bin/` holds plain executables rather than dotfiles, so it targets `~/bin`
instead of `~`:

```sh
mkdir -p ~/bin && stow -t ~/bin bin
```

The `mkdir` matters: stow will not create a missing target directory. The
alternative — a `bin/bin/` package that works with a bare `stow bin` — was
rejected as a path nobody would think to look in. Note that `.stowrc` cannot
express this, since its `--target` applies per invocation, not per package.

### Excluded packages

`spacemacs` is not installed by `make all` because `~/.spacemacs` is currently
a real file, not a symlink; `stow spacemacs` would conflict until you remove
it. `private` is a Spacemacs private-layer directory that belongs under
`~/.emacs.d`, not `~` — stowing it into `$HOME` would be wrong.

## Secrets

Nothing secret goes in this repo. `.zshrc` sources `~/.env.zsh` if it exists;
put API keys and machine-local overrides there. That file is outside the repo
and so can never be committed.
