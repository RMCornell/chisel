require 'pry'
require_relative 'headline_converter'
require_relative 'strong_converter'
require_relative 'emphasis_converter'
require_relative 'symbol_converter'
require_relative 'paragraph_converter'

class Chisel
	attr_accessor :message
	def initialize(message)
		@message = File.readlines(ARGV[0])
	end

	def symbol_conversion
		convert = message.each do |line|
			StrongConverter.new(line).convert_strong
			EmphasisConverter.new(line).convert_emphasis
			SymbolConverter.new(line).convert_symbol

			# paragraph = ParagraphTag.new(line).opening_paragraph_tag
		end
		return convert
	end

	def headline_converstion
		# message.map do |line|
		# 	if line.match(/^#/)
		# 		HeadlineConverter.new(line).convert_headlines
		# 	elsif line.match(/[*][*]/)
		# 		StrongConverter.new(line).convert_strong
		# 	elsif line.match(/[*]/)
		# 		EmphasisConverter.new(line).convert_emphasis
		# 	elsif !line.match(/^#/)
		# 		ParagraphTag.new(line).opening_paragraph_tag
		# 	end
		# end
	end
end

chisel = Chisel.new(ARGV[0])
puts chisel.symbol_conversion

#todo ampersand converter

