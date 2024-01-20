# Concorde - https://laker.tech
the code for Laker Dot Tech / previously concorde.blog

- why is this repo still called concorde if it is now laker dot tech: cant be bothered to change it

## License
Feel free to use the source code under the [Opinionated Queer License](https://oql.avris.it/license?c=Laker%20Turner%7Chttps://laker.tech) but the blog post content (anything under the /src/posts directory) is mine.

## Setup for development
The only outside dependency is `just`

```sh
npm i

# build
just build

# start server
just start

# clean-slate build and start server
just purge
```