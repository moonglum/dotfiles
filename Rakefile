#!/usr/bin/env rake
require "yaml"
require "exogenesis"

Output.fancy
packages_file = YAML.load_file("packages.yml")
ship = Ship.new(packages_file)

[:setup, :install, :cleanup, :update, :uninstall].each do |task_name|
  desc "#{task_name.capitalize} the Dotfiles"
  task task_name do
    ship.public_send task_name
  end
end
