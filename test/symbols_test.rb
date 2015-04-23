require_relative 'test_helper'
require './lib/symbols'

class SymbolsTest < MiniTest::Test
	def test_symbols_exists
		assert Symbols.new("Testing Symbols")
	end

	def test_it_converts_strong_tags
		symbols = Symbols.new("**Convert Strong Tags**")
		assert_equal "<strong>Convert Strong Tags</strong>", symbols.strong_tags
		assert_equal "<strong>Convert Strong Tags</strong>", symbols.convert_symbols
	end

	def test_it_converts_em_tags
		symbols = Symbols.new("*Convert Em Tags*")
		assert_equal "<em>Convert Em Tags</em>", symbols.emphasis_tags
		assert_equal "<em>Convert Em Tags</em>", symbols.convert_symbols

	end

	def test_it_converts_ampersand_symbols
		symbols = Symbols.new("Convert & Symbols")
		assert_equal "Convert &amp; Symbols", symbols.ampersand_symbol
		assert_equal "Convert &amp; Symbols", symbols.convert_symbols
	end
end