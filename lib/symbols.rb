class Symbols
	attr_reader :symbols
	def initialize(symbols)
		@symbols = symbols
	end

	def strong_tags
		symbols.gsub /[*][*] *(.*?)[*][*]/, '<strong>\\1</strong>'
	end
end
