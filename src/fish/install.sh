#!/usr/bin/env bash
THISDIR=$(dirname "$(realpath "$0")")
GITSRC="${THISDIR}/src"
source "${THISDIR}/../helper.sh"

if ! helpersourced; then
	echo -e "${RED}ERROR! Couldn't source necessary helper script.${NOCOLOR}"
	exit 1
fi

downdependencies "${GITSRC}/pacpkgs.lst" "${GITSRC}/aurpkgs.lst"

substitute "$BAKORDEL" "${HOME}/.config/fish/config.fish" "${GITSRC}/config.fish"
substitute "$BAKORDEL" "${HOME}/.config/fish/functions" "${GITSRC}/functions"
substitute "$BAKORDEL" "${HOME}/.config/starship.toml" "${GITSRC}/starship.toml"

if confirmYn "Set fish as the default login shell?"; then
	chsh -s "$(command -v fish)"
fi

echo -e "${GREEN}Fish Hyprlain config installed successfully.${NOCOLOR}"
