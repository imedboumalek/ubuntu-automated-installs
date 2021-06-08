# Ubuntu automated dev dependencies install

## Why am I making this?

I like novelty so I distro-hop a lot, which means I have to spend weeks configuring a new machine. From dot files to dev dependencies, this could all be automated.

## How to contribute?

- find the folder (category) correspondent to what you find to install, if there isn't one, make one.
- name your script as `package-name.sh`

> _*NOTE*_: do _NOT_ include the entry point `init.sh`, let the end user decide what to add or not to add.

## Usage

There are categorized install scripts for each dependency:

- Languages
- Editors
  - nvim
  - vs-code
- Tools
  - Docker
- db
- (add category if necessary)

Customize the init.sh script to suite your needs then run it using `sudo sh init.sh`
