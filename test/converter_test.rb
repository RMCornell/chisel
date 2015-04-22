require 'minitest/autorun'
require 'minitest/pride'
require './lib/Converter'

class ConverterTest < MiniTest::Test
	def test_converter_exists
		assert Converter.new("It Exists")
	end
end

class HeadlineConverterTest < MiniTest::Test
	def test_headline_converter_exists
		assert HeadlineConverter.new("It Exists")
	end

	def test_it_converts_h1_tags
		headline = HeadlineConverter.new("#Testing H1 Tags")
		assert_equal "<h1>Testing H1 Tags</h1>", headline.h1_tag
	end

	def test_it_converts_h2_tags
end

class EmphasisConverterTest < MiniTest::Test
	def test_emphasis_converter_exists
		assert EmphasisConverter.new("It Exists")
	end
end

class StrongConverterTest < MiniTest::Test
	def test_strong_converter_exists
		assert StrongConverter.new("It Exists")
	end
end

class ParagraphTagTest < MiniTest::Test
	def test_paragraph_tag_exists
		assert ParagraphTag.new("It Exists")
	end
end