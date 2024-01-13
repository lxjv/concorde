default: start
# never make destructive actions the default

build:
  echo "Now building Concorde"
  npx @11ty/eleventy

start:
  echo "Starting Concorde now!"
  npx @11ty/eleventy --serve
  echo "bye!"

purge:
  echo "Purging build folder and starting server!"
  rm -rf ./public
  npx @11ty/eleventy --serve
  echo "bye!"

test:
  echo "Now testing Concorde"
  npx @11ty/eleventy --dryrun
  sleep 3
  shellcheck concorde.sh
  echo "works lol"

install-cli:
  cp ./concorde.sh ~/.local/bin/zep
  echo "concorde installed!"

ci:
# do this lol 