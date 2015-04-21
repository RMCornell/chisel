class Parser
	attr_accessor :message
	def initialize
		@message = message
	end

	def message
		@message = File.read(ARGV[0])
	end
end



