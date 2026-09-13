#!/usr/bin/env bash

echo -n "This installer will move dsandbox and supporting_scripts to ~/.local/bin. Do you agree? [Y\N]: "
read CONSENT
if [[ $CONSENT == "n" || $CONSENT == "N" || $CONSENT == *"o"* ]]; then
	echo "no malware for you today i guess"
	exit 1
fi

echo Installing
if [[ ! -d $HOME/.local/bin/supporting_scripts ]]; then
	mkdir -p $HOME/.local/bin/supporting_scripts
fi

chmod +x dsandbox
chmod +x supporting_scripts -R

cp dsandbox ~/.local/bin/
cp supporting_scripts/* ~/.local/bin/supporting_scripts/

echo 'done!!! have fun sandboxin'
