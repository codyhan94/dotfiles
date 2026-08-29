# Packages that symlink into $HOME. `spacemacs` is omitted: ~/.spacemacs is a
# real file and would conflict. `private` is a Spacemacs layer dir, not a $HOME
# package. See README.md.
HOME_PACKAGES := git ipython vim zsh
PREFIX ?= $(HOME)

.PHONY: all bin unstow $(HOME_PACKAGES) spacemacs

all: $(HOME_PACKAGES) bin

$(HOME_PACKAGES) spacemacs:
	stow --target=$(PREFIX) $@

# Plain executables, so this one targets ~/bin. stow will not create a missing
# target directory.
bin:
	mkdir -p $(PREFIX)/bin
	stow --target=$(PREFIX)/bin bin

unstow:
	stow --delete --target=$(PREFIX) $(HOME_PACKAGES)
	stow --delete --target=$(PREFIX)/bin bin
