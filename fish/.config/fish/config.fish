set -g theme_title_display_process 'yes'

if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"

    set BASE16_KITTY "$HOME/.config/kitty/base16-kitty/"
    if test -n "$BASE16_THEME" -a -d "$BASE16_KITTY/colors" -a $TERM = "xterm-kitty"
        kitty @set-colors $BASE16_KITTY/colors/base16-$BASE16_THEME-256.conf
    end
end

if command -q rbenv; and status --is-interactive
    source (rbenv init -|psub)
end
