# -*- coding: utf-8 -*-

require 'active_record'
require_relative 'pessoas'
require_relative 'car'
require_relative 'enterprise'
require_relative 'provider'
require_relative 'enterprise_provider'

def get_columns_and_values(command)
	
	columns = ""
	values = ""
	command.each_with_index do |elem, idx|
  		
  		if(idx == 0)
	  		elems = elem.split(" ")
	  		elems.each do |e|
		  		
		  		if(e.include?("="))

		  			columns += e.slice(0..-2) + ","
		  			
		  		end

		  	end

		else

			if(elem.include?("="))

	  			columns += elem.slice(0..-2) + ","

	  		else
	  		
	  			values += "'" + elem + "'" + ","
	  			
	  		end

		end

  	end

  	return {"columns" => columns, "values" => values}
end

def decide_command(command)
  
  #create the connection with the database
  @connection = ActiveRecord::Base.connection

  if(command.instance_of?(Array))
  	sql_action = command[0].split(" ")[0]
    table = command[0].split(" ")[1]
  end
  
  if(sql_action.downcase == "insere")
  
  	columns = "("
  	values = "("
  	
  	query_info = get_columns_and_values(command)
  	
  	columns += query_info['columns'].slice(0..-2) + ")" 
  	values += query_info['values'].slice(0..-2) + ")"
  	result = @connection.exec_query("INSERT INTO " + table + columns +
  									"VALUES" + values)

  elsif (sql_action.downcase == "lista")

  	result = @connection.exec_query("SELECT *  FROM " + table)

  	puts result

  elsif (sql_action.downcase == "exclui")

  	sql_query = ""
  	
  	query_info = get_columns_and_values(command)

  	columns = query_info['columns'].slice(0..-2).split(",")
  	values = query_info['values'].slice(0..-2).split(",")

  	columns.each_with_index do |elem, idx|
  		sql_query += elem + "=" + values[idx] + " AND "
  	end

  	sql_query = sql_query.slice(0..-6)

  	@connection.exec_query("DELETE FROM " + table +
  							" WHERE " + sql_query)

  elsif (sql_action.downcase == "altera")

  	command = command[0].split(" ")

  	comlumn_action = command[2]

  	if(comlumn_action == "adiciona")

  		@connection.exec_query("ALTER TABLE " + table +
  								" ADD " + command[3] + " " + command[4])

  	elsif(comlumn_action == "remove")

  		@connection.exec_query("ALTER TABLE " + table +
  								" DROP COLUMN " + command[3])

  	elsif(comlumn_action == "altera")
  		
  		@connection.exec_query("ALTER TABLE " + table +
  								" ALTER COLUMN " + command[3] + " TYPE " + command[4] + " USING " + command[3] + "::" + command[4])

  	end

  end  	
  		
end

#Starts the prompt interface with the user
while true
  puts "Type the command for the database: "
  STDOUT.flush
  command = gets.chomp
  if command == "exit"
    break
  else
    command = command.split("\"")
    decide_command(command)
  end
end