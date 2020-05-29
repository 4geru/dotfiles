#!/usr/bin/env ruby

require 'bundler'

MYSQL_VERSION = '5.7'

def bin?(command)
  Bundler.which(command)
end

def system!(*args)
  puts args.join(' ')
  system(*args) || abort("\n== Command #{args} failed ==")
end

# 指定されたmysqlがインストールされていない場合
if bin?('mysql') && `mysql --version`.strip.match?(/Distrib #{MYSQL_VERSION}/)
  puts "MySQL v#{MYSQL_VERSION} is Already installed."
else
  if bin?('brew')
    system!('brew', 'install', "mysql@#{MYSQL_VERSION}")
  else
    # linux, windows and as so on
    raise NotImplementedError, 'Unsupported os. Please install manually'
  end
end
