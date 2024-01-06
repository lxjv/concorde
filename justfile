build:
  echo "Now building concorde!
  npx @11ty/eleventy

start:
  echo "Now starting concorde"
  npx @11ty/eleventy --serve

purge:
  echo "Purging concorde's public folder and starting server"
  rm -rf ./public
  npx @11ty/eleventy --serve

# add ci step soon
