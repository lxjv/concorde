#!/usr/bin/env bash

# this is a script to automate some of the boring stuff
# feel free to use this for other projects. -LA

echo "welcome to CONCORDE CLI"
echo "version 0.0.0 - doesnt work yet"

OPTION=$(gum choose "new" "edit" "quit")

if [[ OPTION = "new" ]]; then
	echo "new post!"
	POST_SLUG=$(gum input --placeholder "post slug here pls :3")
	cp ./src/cdn/post_template.md ./src/posts/$POST_SLUG.md

elif [[ OPTION = "edit" ]]; then
	echo "edit post!"
	EDITOR $(gum file ./src/posts)
else
	echo "bye!"
	exit
fi



