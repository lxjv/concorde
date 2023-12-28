#!/usr/bin/env bash

# this is a script to automate some of the boring stuff
# feel free to use this, 

echo "welcome to CONCORDE CLI"
echo "version 0.0.1 - doesnt work yet"

OPTION=$(gum choose "new" "edit" "quit")

if [[ OPTION = "new" ]]
then
	POST_SLUG=$(gum input --placeholder "post slug here pls :3")
	cp ./src/cdn/post_template.md ./src/posts/{POST_SLUG}.md
elif [[ OPTION = "edit" ]]
then
	EDITOR $(gum file ./src/posts)
else
	exit
fi



