#!/usr/bin/ruby
require 'colorize'
require_relative '../lib/check.rb'

check = Check.new

lines = File.readlines('./files/file.md')

lines.each_with_index do |line, index|
  index += 1
  if line =~ /^#/
    if !check.duplicate(line, check.headings)
      puts "#{index}: [ERROR] Heading already exist".red
    elsif check.check_head_length(line)
      puts "#{index}: [OK] Heading length is good".green
    else
      puts "#{index}: [ERROR] Heading length is too long".red
    end
  elsif line =~ /!\[/
    if check.url(line)
      puts "#{index}: [OK] url image is good".green
    else
      puts "#{index}: [ERROR] url image is empty".red
    end
  elsif line =~ /\[/
    if check.url(line)
      puts "#{index}: [OK] url link is good".green
    else
      puts "#{index}: [ERROR] url link is empty".red
    end
  end
end