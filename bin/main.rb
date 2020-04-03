#!/usr/bin/ruby
require 'colorize'
require_relative '../lib/check.rb'

check = Check.new
headings = check.headings
urls = check.urls

lines = File.readlines('./files/file.md')

lines.each_with_index do |line, index|
  index += 1
  if line =~ /^#/
    if !check.duplicate_headings(line, headings)
      puts "#{index}: [ERROR] Heading already exist".red
    elsif check.check_head_length(line)
      puts "#{index}: [OK] Heading length is good".green
    else
      puts "#{index}: [ERROR] Heading length is too long".red
    end
  elsif line =~ /!\[/
    if !check.duplicate_urls(line, urls)
      puts "#{index}: [ERROR] image url already exist".red
    elsif check.url(line)
      puts "#{index}: [OK] url image is good".green
    else
      puts "#{index}: [ERROR] url image is empty".red
    end
  elsif line =~ /\[/
    if !check.duplicate_urls(line, urls)
      puts "#{index}: [ERROR] link url already exist".red
    elsif check.url(line)
      puts "#{index}: [OK] url link is good".green
    else
      puts "#{index}: [ERROR] url link is empty".red
    end
  elsif line !~ /^\n/
    if check.line_length(line)
      puts "#{index}: [OK] line length is good".green
    else
      puts "#{index}: [ERROR] line length is too long".red
    end
  end
end

if lines[-1] =~ /\n/
  puts "#{lines.length + 1} [OK] file has new line character at the end ".green
else
  puts "#{lines.length} [ERROR] file missing new line character at the end ".red
end
