require_relative 'test_helper'
require './lib/emphasis_converter'

class EmphasisConverterTest < MiniTest::Test
	def test_emphasis_converter_exists
		assert EmphasisConverter.new("It Exists")
	end

	def test_it_converts_emphasis_tags
		emphasis = EmphasisConverter.new("*Testing EM Tags*")
		assert_equal "<em>Testing EM Tags</em>", emphasis.convert_emphasis
	end
end