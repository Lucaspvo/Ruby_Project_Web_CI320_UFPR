# -*- coding: utf-8 -*-

require 'active_record'
require_relative 'pessoas'

#Starts the prompt interface with the user
# while true
#   puts "Type the command for the database: "
#   STDOUT.flush
#   command = gets.chomp
#   if command == "exit"
#     break
#   else
#     command = command.split(" ")
#     decides_command(command)
#   end
# end

# def decides_command(command)
#   puts command[0]
# end

people = Pessoa.all

puts people