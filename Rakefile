#!/usr/bin/env rake
require "yaml"
require "exogenesis"

packages_file = YAML.load_file("packages.yml")
ship = Ship.new(packages_file)

[:up, :down, :clean].each do |task_name|
  desc "#{task_name.capitalize} the Dotfiles"
  task task_name do
    ship.public_send task_name
  end
end
