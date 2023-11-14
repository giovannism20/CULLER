# typed: true
# frozen_string_literal: true

require 'thor'

# cli entrypoint
# initial goal:
#   get information about relation of the code structure
class Culler < Thor
  desc 'hello NAME', 'say hello to NAME'
  def hello(name)
    puts "Hello #{name}"
  end

  desc 'receive_file_text', 'it will receive a file text and print the programming language'
  def receive_file_text(file)
    file_value = File.open(file).read
    puts file_value

    puts 'Received file'
    puts "File content #{file}"
  end
end

Culler.start(ARGV)

# first task
# receive a text file and identify the programming language of it
# second task
# take the content of this file and interpret it
