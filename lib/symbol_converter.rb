class SymbolConverter
	attr_reader :symbol

	def initialize(symbol)
		@symbol = symbol
	end

	def convert_symbol
		@symbol.gsub!("&", "&amp;")
	end
end