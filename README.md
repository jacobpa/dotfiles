# Dotfiles
A collection of dotfiles and other configuration.

## Dependencies
Yes, really.

* [base16-shell](https://github.com/jacobpa/base16-shell) - My own fork since upstream is broken on
  fish shell
* [base16-kitty](https://github.com/kdrag0n/base16-kitty)

## Submodules
Don't forget to actually set up the git submodules (you will).

```bash
git submodule init
git submodule update
```

## Stow
Don't forget how to use [stow](https://www.gnu.org/software/stow/) (you will).

```bash
stow -t $HOME -S <package>
```
