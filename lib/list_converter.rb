class ListConverter
	attr_reader :list_header, :list_item

	def initialize(list_header)
		@list_header = list_header
		@list_items = list_item
	end
end


class SymbolConverter
	attr_reader :symbol

	def initialize(symbol)
		@symbol = symbol
	end

	def convert_symbol
		@symbol.gsub!("&", "&amp;")
	end
end