#!/usr/bin/env ruby

require 'bundler'

REDIS_VERSION = '4.0.10'

def bin?(command)
  Bundler.which(command)
end

def system!(*args)
  puts args.join(' ')
  system(*args) || abort("\n== Command #{args} failed ==")
end

def redis_version
  output = `redis-server --version`.strip
  output.match(/Redis server v=(?<version>\d+\.\d+\.\d+)/)
  Regexp.last_match[:version]
end

if bin?('redis-server') && redis_version =~ /4\.\d+\.\d+/
  puts "Redis v#{REDIS_VERSION} is Already installed."
elsif bin?('brew')
  puts "Download and install Redis."
  system!('brew install redis')
else
  # linux, windows and as so on
  raise NotImplementedError, 'Unsupported os. Please install manually from https://redis.io/download'
end
