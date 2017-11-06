# Dotfiles

These are my dotfiles (Vim just for now), mostly for personal use, but feel free to clone and use them as well.

## Installing new plugins

I'm using git submodules to manage my plugins, so adding a new plugin is as simple as running `git submodule add https://github.com/user/plugin bundle/plugin` inside the vim folder.

## Updating the plugins

Just run `git submodule foreach git pull origin master` inside the vim folder.


