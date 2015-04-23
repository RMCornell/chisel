require 'pry'
require_relative 'headline_converter'
require_relative 'strong_converter'
require_relative 'emphasis_converter'
require_relative 'symbol_converter'
require_relative 'paragraph_converter'
require_relative 'list_converter'

class Chisel
	attr_accessor :message
	def initialize
		@message = File.read(ARGV[0]).split("\n")
	end

	def symbol_conversion
		message.each do |line|
			StrongConverter.new(line).convert_strong
			EmphasisConverter.new(line).convert_emphasis
			SymbolConverter.new(line).convert_symbol
			List.new(line).unordered_list_items
			List.new(line).ordered_list_items
		end
	end


	def header_conversion
		symbol_conversion.each do |line|
			HeadlineConverter.new(line).convert_headlines
		end
	end
end

chisel = Chisel.new
converted_message = chisel.header_conversion

html_file = File.open(ARGV[1], "w")
html_file << converted_message.join("\n")
html_file.close



