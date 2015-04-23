class Symbols
	attr_reader :symbols
	def initialize(symbols)
		@symbols = symbols
	end

	def strong_tags
		symbols.gsub! /[*][*] *(.*?)[*][*]/, '<strong>\\1</strong>'
	end

	def emphasis_tags
		symbols.gsub! /[*] *(.*?)[*]/, '<em>\\1</em>'
	end

	def ampersand_symbol
		symbols.gsub! /[&]/, '&amp;'
	end

	def convert_symbols
		strong_tags
		emphasis_tags
	end
end
