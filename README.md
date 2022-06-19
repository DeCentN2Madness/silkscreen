# Silkscreen [![Build Status](https://travis-ci.org/carlosfrodrigues/silkscreen.svg?branch=master)](https://travis-ci.org/carlosfrodrigues/silkscreen)

Silkscreen converts Markdown files to fullPage-style slides in html. See the [example site](https://carlosfrodrigues.github.io/silkscreen-example/).

![silkscreen-gif](https://raw.githubusercontent.com/carlosfrodrigues/silkscreen/master/github-assets/silkscreen.gif)

### How to use

```sh
silkscreen yourmarkdownfile.md
```
This generates an HTML file in the same directory and with the same name as the markdown file.

### Install

You need Cabal to install. Run the following within the silkscreen directory.

```sh
cabal install
```
It will install silkscreen and the CMark library dependency.

### Configuration

There are two files inside the config folder.

- **colors**: A file where each line has a HEX color.The colors are used in the background in repeat. You can edit this file choosing the colors you want.
- **template.silk**: the HTML template used to generate the fullpage.

### Easter Egg

Run silkscreen with the flag `--weezer`.
