# Dotfiles
A collection of dotfiles and other configuration.

## Submodules
Don't forget to actually set up the git submodules (you will).

```bash
git submodule init
git submodule update
```

The following submodules are used:
* [base16-shell](https://github.com/jacobpa/base16-shell) - Using my own fork until the broken
  fish-shell is fixed upstream.
* [base16-kitty](https://github.com/kdrag0n/base16-kitty) - Kitty magic is in the kitty
  configuration to automatically sync the theme with the one selected by `base16-shell`.

## Stow
Don't forget how to use [stow](https://www.gnu.org/software/stow/) (you will).

```bash
stow -t $HOME -S <package>
```
