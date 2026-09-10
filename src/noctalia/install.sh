#!/usr/bin/env bash
THISDIR=$(dirname "$(realpath "$0")")
GITSRC="${THISDIR}/src"
source "${THISDIR}/../helper.sh"

if ! helpersourced; then
	echo -e "${RED}ERROR! Couldn't source necessary helper script.${NOCOLOR}"
	exit 1
fi

downdependencies "${GITSRC}/pacpkgs.lst" "${GITSRC}/aurpkgs.lst"

substitute "$BAKORDEL" "${HOME}/.config/noctalia/config.toml" "${GITSRC}/config.toml"
substitute "$BAKORDEL" "${HOME}/.config/noctalia/bar.toml" "${GITSRC}/bar.toml"
substitute "$BAKORDEL" "${HOME}/.config/noctalia/shell.toml" "${GITSRC}/shell.toml"
substitute "$BAKORDEL" "${HOME}/.config/noctalia/palettes/Hyprlain.json" "${GITSRC}/palettes/Hyprlain.json"

echo -e "${GREEN}Noctalia Hyprlain theme installed successfully.${NOCOLOR}"
