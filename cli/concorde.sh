#!/usr/bin/env bash

echo "welcome to CONCORDE CLI"
echo "version 0.0.1 - doesnt work yet"

OPTION=$(gum choose "new" "edit" "quit")

if [[ OPTION = "new" ]]
then
	POST_SLUG=$(gum input --placeholder "post slug here pls :3")
	cp ./post_template.md ../src/posts/{POST_SLUG}.md
elif [[ OPTION = "edit" ]]
then
	EDITOR $(gum file ../src/posts)
else
	exit
fi



