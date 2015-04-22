require_relative 'test_helper'
require './lib/strong_converter'

class StrongConverterTest < MiniTest::Test
	def test_strong_converter_exists
		assert StrongConverter.new("It Exists")
	end

	def test_it_converts_strong_tags
		skip
		strong = StrongConverter.new("**Testing Strong Tags**")
		assert_equal "<strong>Testing Strong Tags</strong>", strong.convert_strong
	end
end