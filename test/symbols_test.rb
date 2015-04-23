require_relative 'test_helper'
require './lib/symbols'

class SymbolsTest < MiniTest::Test
	def test_symbols_exists
		assert Symbols.new("Testing Symbols")
	end

	def test_it_converts_strong_tags
		symbols = Symbols.new("**Convert Strong Tags**")
		assert_equal "<strong>Convert Strong Tags</strong>", symbols.strong_tags
	end
end