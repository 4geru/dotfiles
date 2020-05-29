#!/usr/bin/env ruby

require 'bundler'

YARN_VERSION = '1.10.1'

def bin?(command)
  Bundler.which(command)
end

def system!(*args)
  puts command.join(' ')
  system(*args) || abort("\n== Command #{args} failed ==")
end

if bin?('yarn') && `yarn --version`.strip == YARN_VERSION
  puts "Yarn v#{YARN_VERSION} is Already installed."
else
  puts "Download and install Yarn."
  `curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version #{YARN_VERSION}`
  puts 'Please append "export PATH=$HOME/.yarn/bin:$PATH" to your shellrc.'
end
