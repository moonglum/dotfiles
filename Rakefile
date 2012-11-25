#!/usr/bin/env rake
require "yaml"

module Homebrew
  def Homebrew.update
    puts "Updating Homebrew..."
    `brew update`
  end

  def Homebrew.install(name)
    print "Installing #{name}... "
    status = `brew install #{name}`

    raise "No formula for #{name}" if status.include? "No available formula"

    if status.include? "already installed"
      puts "Already Installed!"
    else
      puts "Installed!"
    end
  end

  def Homebrew.install_all_from_yaml(yaml_filename)
    Homebrew.update
    brew_file = YAML.load File.read(yaml_filename)
    brew_file["brews"].each { |name| Homebrew.install name }
  end
end

module Dotfile
  def Dotfile.link_file(file_name)
    original = File.join Dir.pwd, "tilde", file_name.to_s
    target = File.join Dir.home, ".#{file_name}"

    if File.symlink? target
      puts "#{file_name} already linked"
    else
      puts "Linking #{file_name}"
      `ln -s #{original} #{target}`
    end
  end

  def Dotfile.unlink_file(file_name)
    target = File.join Dir.home, ".#{file_name}"

    if File.symlink? target
      `rm #{target}`
      puts "Symlink for #{target} removed"
    else
      puts "No symlink for #{target} existed."
    end
  end

  def Dotfile.file_names
    file_names = Dir.entries(File.join(Dir.pwd, "tilde"))

    file_names.delete_if do |filename|
      filename[0] == "."
    end
  end

  def Dotfile.link_all
    file_names.each { |dotfile| Dotfile.link_file dotfile }
  end

  def Dotfile.unlink_all
    file_names.each { |dotfile| Dotfile.unlink_file dotfile }
  end
end

module OhMyZSH
  def OhMyZSH.setup
    print "Cloning Oh-my-zsh..."
    target = File.join Dir.home, ".oh-my-zsh"

    if File.exists? target
      puts "Oh-my-zsh already exists"
    else
      `git clone git://github.com/moonglum/oh-my-zsh.git #{target}`
      puts "Cloned!"
    end
  end

  def OhMyZSH.teardown
    print "Removing Oh-my-zsh..."
    target = File.join Dir.home, ".oh-my-zsh"

    if File.exists? target
      `rm -r #{target}`
      puts "Removed!"
    else
      puts "Did not exist"
    end
  end
end

module Vundle
  def Vundle.setup
    create_vim_folder
    clone
    install
  end

  def Vundle.create_vim_folder
    target = File.join Dir.home, ".vim"
    Dir.mkdir target unless File.exists? target
  end

  def Vundle.clone
    print "Cloning oh my zsh..."
    target = File.join Dir.home, ".vim", "bundle", "vundle"

    if File.exists? target
      puts "Vundle already exists"
    else
      `git clone git://github.com/gmarik/vundle.git #{target}`
      puts "Cloned!"
    end
  end

  def Vundle.install
    system "vim +BundleInstall\! +qall"
    system "vim +BundleClean\! +qall"
  end

  def Vundle.teardown
    print "Removing Vundle..."
    target = File.join Dir.home, ".vim"

    if File.exists? target
      `rm -r #{target}`
      puts "Removed!"
    else
      puts "Did not exist"
    end
  end
end

desc "Install the dotfiles"
task :install do
  Dotfile.link_all
  OhMyZSH.setup
  Vundle.setup
  Homebrew.install_all_from_yaml "brews.yml"
end

desc "Uninstall the dotfiles (Currently keeps the brews)"
task :uninstall do
  Dotfile.unlink_all
  OhMyZSH.teardown
  Vundle.teardown
end
