require 'minitest/autorun'
require 'minitest/pride'
require './lib/converter'

class ConverterTest < MiniTest::Test
	def test_converter_exists
		assert Converter.new("#hello world")
	end

	def test_split_into_words
		converter = Converter.new("#hello world")
		assert_equal ["#hello", "world"], converter.split_message
	end

	def test_it_converts_first_level_headlines_into_html_tags
		converter = Converter.new("#hello world")
		assert_equal ""

	end
end



