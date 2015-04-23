require 'pry'
require_relative 'converter'

class Chisel
	attr_reader :message

	def initialize
		@message = File.readlines(ARGV[0])
	end

	def convert_to_html
		Converter.new.convert_to_html
	end
end

chisel = Chisel.new.convert_to_html.join("")

html_file = File.open(ARGV[1], "w")
html_file << chisel
html_file.close