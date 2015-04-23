require 'pry'
require_relative 'headers'
require_relative 'symbols'
require_relative 'lists'

class Chisel
	attr_accessor :message

	def initialize
		@message = File.readlines(ARGV[0])
	end

	def convert_to_html
		message.each do |line|
			Headers.new(line).convert_headers
			Symbols.new(line).convert_symbols
			Symbols.new(line).ampersand_symbol
			Lists.new(line).ul_items
			Lists.new(line).ol_items
		end

	end



end

chisel            = Chisel.new
converted_message = chisel.convert_to_html


html_file = File.open(ARGV[1], "w")
html_file << converted_message.join("")
html_file.close