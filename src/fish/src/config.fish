# Fish Config — Hyprlain

gpg-connect-agent UPDATESTARTUPTTY /bye >/dev/null
alias grep='grep --color=auto'
alias conf='z ~/.config'
alias cat='bat'
alias ls='ls --color=auto --hyperlink=auto'
alias lsa='ls -la'
alias icat='kitty +kitten icat'
alias hx='helix'
alias cl='clear'
alias lgit='lazygit'
alias fishrc='$EDITOR ~/.config/fish/config.fish'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias lsblk='lsblk -o name,mountpoint,label,fstype,size,uuid'
alias neofetch='neofetch --source ~/.config/neofetch/logo'
alias dlaudio='yt-dlp -x --audio-format mp3'
alias cd='z'
alias cdi='zi'
alias ls='lsd'
alias files='spf'

set -gx EDITOR helix
set -gx VOLUME_STEP 5
set -gx BRIGHTNESS_STEP 5
set -gx SSH_AUTH_SOCK "$(gpgconf --list-dirs agent-ssh-socket)"
set -gx PATH $HOME/.cargo/bin $PATH
set -gx PATH $HOME/go/bin $PATH
set -gx PATH $HOME/.config/hypr/scripts $PATH
set fish_vi_force_cursor
set fish_cursor_default block
set fish_cursor_insert line blink
set fish_cursor_visual underscore blink
set -g fish_greeting ""

# Hyprlain syntax colors
set -g fish_color_normal C1B48E
set -g fish_color_command CE7688
set -g fish_color_keyword BA6A7B
set -g fish_color_quote C1B48E
set -g fish_color_redirection 968C6E
set -g fish_color_end 804654
set -g fish_color_error CE7688
set -g fish_color_param C1B48E
set -g fish_color_comment 5D333C
set -g fish_color_operator CE7688
set -g fish_color_escape 804654
set -g fish_color_autosuggestion 6A6A6A
set -g fish_color_cwd C1B48E
set -g fish_color_cwd_root CE7688
set -g fish_pager_color_prefix CE7688
set -g fish_pager_color_completion C1B48E
set -g fish_pager_color_description 968C6E
set -g fish_pager_color_selected_background --background=804654

if type -q neofetch && status is-interactive
    neofetch
end

starship init fish | source
zoxide init fish | source
