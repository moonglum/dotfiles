#!/usr/bin/env rake
require "yaml"
require "rubygems"
require "exogenesis"

packages = YAML.load_file "packages.yml"

package_managers = [
  Dotfile.new,
  OhMyZSH.new,
  Homebrew.new(packages["brews"]),
  Vundle.new,
  Rvm.new(packages["rubies"])
]

desc "Install the dotfiles"
task :install do
  package_managers.each(&:install)
end

desc "Update everything"
task :update do
  package_managers.each(&:update)
end

=begin
desc "Uninstall the dotfiles (Currently keeps the brews)"
task :uninstall do
  package_managers.each(&:teardown)
end
=end
