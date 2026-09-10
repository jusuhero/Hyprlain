#!/usr/bin/env bash
THISDIR=$(dirname "$(realpath "$0")")
GITSRC="${THISDIR}/src"
source "${THISDIR}/../helper.sh"

if ! helpersourced; then
	echo -e "${RED}ERROR! Couldn't source necessary helper script.${NOCOLOR}"
	exit 1
fi

echo -e "${YELLOW}You might just want to keep these themes for the time in which you'll download their apps.${NOCOLOR}"
if confirmYN "Would you like to download every theme's relative application?"; then
	downdependencies "${GITSRC}/pacpkgs.lst" "${GITSRC}/aurpkgs.lst"
fi

substitute "$BAKORDEL" "${HOME}/.local/share/audacious/Skins/lainampborders" "${GITSRC}/audacious/lainampborders"
echo "skin=${HOME}/.local/share/audacious/Skins/lainampborders" >> "${GITSRC}/audacious/config"
substitute "$BAKORDEL" "${HOME}/.config/audacious/config" "${GITSRC}/audacious/config"

substitute "$BAKORDEL" "${HOME}/.config/helix" "${GITSRC}/helix"
substitute "$BAKORDEL" "${HOME}/.config/nvim" "${GITSRC}/nvim"
substitute "$BAKORDEL" "${HOME}/.config/tmux" "${GITSRC}/tmux"
substitute "$BAKORDEL" "${HOME}/.config/zathura" "${GITSRC}/zathura"
substitute "$BAKORDEL" "${HOME}/.config/bat" "${GITSRC}/bat"
substitute "$BAKORDEL" "${HOME}/.config/btop" "${GITSRC}/btop"
substitute "$BAKORDEL" "${HOME}/.config/cava" "${GITSRC}/cava"
substitute "$BAKORDEL" "${HOME}/.config/vifm" "${GITSRC}/vifm"

echo -e "${YELLOW}To install the Firefox theme, follow the README's instructions!${NOCOLOR}"

cat "${GITSRC}/.profile" >> "${HOME}/.profile"
DOTPROFILE_SHLINE="[[ -f ~/.profile ]] && . ~/.profile"
echo "$DOTPROFILE_SHLINE" >> "${HOME}/.bashrc"

getpkg git
git clone --depth=1 https://github.com/uiriansan/LainGrubTheme && cd LainGrubTheme && ./install.sh && ./patch_entries.sh

echo -e "${GREEN}Hyprlain dotfiles installed successfully.${NOCOLOR}"
