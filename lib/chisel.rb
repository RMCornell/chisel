require 'pry'
require_relative "headers"

class Chisel
	attr_accessor :message

	def initialize
		@message = File.readlines(ARGV[0])
	end

	def convert_to_html
		message.map do |line|
			Headers.new(line).convert_headers

		end

	end



end

chisel            = Chisel.new
converted_message = chisel.convert_to_html

html_file = File.open(ARGV[1], "w")
html_file << converted_message
html_file.close