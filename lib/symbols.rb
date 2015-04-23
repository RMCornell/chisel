class Symbols
	attr_reader :symbols
	def initialize(symbols)
		@symbols = symbols
	end

	def strong_tags
		symbols.gsub! /[*][*] *(.*?)[*][*]/, '<strong>\\1</strong>'
	end

	def emphasis_tags
		symbols.gsub! /[*] *(.*?)[*]\s/, '<em>\\1</em>'
	end

	def ampersand_symbol
		symbols.gsub! /[&]/, '&amp;'
	end

	def convert_symbols
		if symbols.match(/[*][*]/)
			strong_tags
		elsif symbols.match(/[*]/)
			emphasis_tags
		end
	end
end
