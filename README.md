# Rails Docker Starter Kit

## Overview

This repository is a very basic Ruby on Rails application w/ Docker

## Prerequisites

To use this repository make sure you have the following installed:

1. [Docker](https://docs.docker.com/get-docker/)
2. [make](https://formulae.brew.sh/formula/make)

**Note:** Make sure you are using the latest version of make (which is installed as gmake). Instructions are available in the link above on the Homebrew Formulae page.

You can see a list of available commands by executing:

```sh
make help
```

## Examples

```sh
# Launch a terminal in the Ruby on Rails container
make terminal

# Create & migrate databases (you can call multiple make targets)
make setup migrate seed

# Start all docker containers in the background
make up

# View the logs of the docker containers
make logs

# Run RSpec
make rspec

# Launcha  rails console
make console
```

## Additional Resources

1. [tailwindcss](https://tailwindcss.com/docs/installation)
2. [esbuild](https://esbuild.github.io/)
