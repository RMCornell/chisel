require 'pry'
require_relative 'parser'


class Chisel < Converter
	attr_accessor :message
	def initialize(message)
		@message = File.readlines(ARGV[0])
	end

	def html_conversion
		message.map do |line|
			if line.match(/^#/)
				HeadlineConverter.new(line).convert_headlines
			elsif line.match(/[*][*]/)
				StrongConverter.new(line).convert_strong
			elsif line.match(/[*]/)
				EmphasisConverter.new(line).convert_emphasis
			elsif line.start_with?("#") != line.match(/^#/) && line.start_with?("\n") == false
				ParagraphTag.new(line).opening_paragraph_tag
			end
		end
	end
end

chisel = Chisel.new(ARGV[0])
puts chisel.html_conversion

