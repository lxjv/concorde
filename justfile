build:
  echo "Now building Concorde"
  npx @11ty/eleventy
start:
  echo "Starting Concorde now!"
  npx @11ty/eleventy --serve
purge:
  echo "Purging build folder and starting server!"
  rm -rf ./public
  npx @11ty/eleventy --serve
test:
  echo "Now testing Concorde"
  npx @11ty/eleventy --dryrun
  sleep 3
  shellcheck concorde.sh
  echo "works lol"
install-cli:
  cp ./concorde.sh ~/.local/bin/concorde