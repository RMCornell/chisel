require_relative 'headers'
require_relative 'symbols'
require_relative 'lists'
require_relative 'paragraphs'

class Converter
	attr_reader :message

	def initialize
		@message = File.readlines(ARGV[0])
	end

	def convert_to_html
		message.each do |line|
			Headers.new(line).convert_headers
			Symbols.new(line).strong_tags
			Symbols.new(line).emphasis_tags
			Symbols.new(line).ampersand_symbol
			Symbols.new(line).convert_symbols
			Lists.new(line).ol_items
			Lists.new(line).ul_items
			Paragraphs.new(line).paragraph_tags
		end
	end
end