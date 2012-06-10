# dotfiles

These are my dotfiles. They contain simple configurations of ack, ruby gems, rvm and TextMate. But the biggest part are Vim and ZSH:

* **ZSH:** It is based upon the oh-my-zsh project. Currently using my fork, because my prompt has not been merged.
* **Vim:** Using tpope's Pathogen for Bundle managment via submodules. Currently installed:
  * **Solarized:** IMHO the best colorscheme.

## More Ideas

* `dotfiles/secrets` or `dotfiles/private` as git ignored folders – gnupg, ssh, gitconfig... – but still linked from ~
* irbrc?
* Installer via Thor
* [Thor Tasks](http://blog.paracode.com/2012/05/17/building-your-tools-with-thor/) via `thor install` – global tasks:
  * `update` all the stuff
  * `init` a directory, with options for ruby, gemsets... generated by a simple YAML File (with the structure being hashes and the contents being strings) – also look at the github plugin for zsh
  * `clean` throw away unwanted dotfiles, logs... a little bit like Onyx
  * `setup platform=osx`
  * `install`
  * `daily` cronjobs, update
* `~/Library`
  * [Bitboxer's Coding Layout](https://github.com/bitboxer/de-coding.keylayout)
* [Pow](http://pow.cx/manual.html) and Pow-Config?
* gems for all gemsets
* hub and github-gem
* gitignore?