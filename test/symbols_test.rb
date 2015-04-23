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

	def test_it_converts_em_tags
		symbols = Symbols.new("*Convert Em Tags*")
		assert_equal "<em>Convert Em Tags</em>", symbols.emphasis_tags
	end

	def test_it_converts_ampersand_symbols
		symbols = Symbols.new("Convert & Symbols")
		assert_equal "Convert &amp; Symbols", symbols.ampersand_symbol

	end

	def test_level_two_edge_case
		skip
		symbols = Symbols.new("My *emphasized and **stronged** text* is awesome")
		assert_equal "Convert <em>emphasized and <strong>stronged</strong> text</em> is awesome", symbols.convert_symbols
	end
end