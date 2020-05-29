#!/usr/bin/env ruby

require 'rbconfig'
require 'open-uri'
require 'bundler'
require 'fileutils'

NODE_VERSION = '12.16.3'

def bin?(command)
  Bundler.which(command)
end

def system!(*args)
  puts args.join(' ')
  system(*args) || abort("\n== Command #{args} failed ==")
end

def ask?(message)
  loop do
    puts ""
    print "#{message} y/n "
    response = gets.strip

    if response =~ /^y(?:es)?$/i
      return true
    elsif response =~ /^n(?:o)?$/i
      return false
    end
  end
end

if bin?('nodenv')
  puts 'nodenv already install'
elsif ask?('Install nodenv?')
  `git clone https://github.com/nodenv/nodenv.git \~/.nodenv`
  `git clone https://github.com/nodenv/node-build \~/.nodenv/plugins/node-build`

  `nodenv install ${NODE_VERSION}`
  `nodenv global 12.16.3`
else
  case RbConfig::CONFIG['host_os']
  when /darwin|mac os/ # :macosx
    system!('open', "https://nodejs.org/dist/v#{NODE_VERSION}/node-v#{NODE_VERSION}.pkg")
  else
    # linux, windows and as so on
    raise NotImplementedError, 'Unsupported os. Please install manually from https://nodejs.org/en/download/'
  end
end
