require_relative 'parser'
require_relative 'converter'

class Chisel < Converter
	attr_accessor :message
	def initialize(message)
		@message = message
	end
end

message = File.read(ARGV[0])
chisel = Chisel.new(message)
puts chisel.h2_tags

