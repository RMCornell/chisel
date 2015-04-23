require 'pry'
require_relative 'headers'
require_relative 'symbols'

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



		end

	end



end

chisel            = Chisel.new
converted_message = chisel.convert_to_html

html_file = File.open(ARGV[1], "w")
html_file << converted_message
html_file.close