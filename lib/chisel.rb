require 'pry'
require_relative 'headers'
require_relative 'symbols'
require_relative 'lists'
require_relative 'paragraphs'

class Chisel
	attr_reader :message

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
			Paragraphs.new(line).paragraph_tags

		end
	end
end

chisel = Chisel.new.convert_to_html.join("")



html_file = File.open(ARGV[1], "w")
html_file << chisel
html_file.close