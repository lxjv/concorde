#!/usr/bin/env bash

# this is a script to automate some of the boring stuff
# feel free to use this for other projects. -LA

# config
EDITOR="code"
POST_DIR="~/dev/web/concorde/src/posts" # use a static path if you install the cli

echo "Concorde CLI"
echo "version 1.2.0 - stats update"

OPTION=$(gum choose "new" "edit" "stats" "quit")

if [[ $OPTION == "new" ]]; then
    echo "Creating a new post"
    POST_SLUG=$(gum input --placeholder "post slug") || echo "gum broke"
    cp ./src/cdn/post_template.md $POST_DIR/$POST_SLUG.md 
	$EDITOR $POST_DIR/"$POST_SLUG".md

elif [[ $OPTION == "edit" ]]; then
    echo "edit post!"
    $EDITOR "$(gum file $POST_DIR)" || echo "gum broke"

elif [[ $OPTION == "stats" ]]; then
    echo "concorde stats"
    POST_COUNT=$(find $POST_DIR/**.md | wc -l | tr -d ' ')
	echo "There are $POST_COUNT posts!"
else
    exit
fi