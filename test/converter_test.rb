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
		assert_equal "<h1>Testing H1 Tags</h1>", headline.convert_headlines
	end

	def test_it_converts_h2_tags
		headline = HeadlineConverter.new("##Testing H2 Tags")
		assert_equal "<h2>Testing H2 Tags</h2>", headline.h2_tag
		assert_equal "<h2>Testing H2 Tags</h2>", headline.convert_headlines
	end

	def test_it_converts_h3_tags
		headline = HeadlineConverter.new("###Testing H3 Tags")
		assert_equal "<h3>Testing H3 Tags</h3>", headline.h3_tag
		assert_equal "<h3>Testing H3 Tags</h3>", headline.convert_headlines
	end

	def test_it_converts_h4_tags
		headline = HeadlineConverter.new("####Testing H4 Tags")
		assert_equal "<h4>Testing H4 Tags</h4>", headline.h4_tag
		assert_equal "<h4>Testing H4 Tags</h4>", headline.convert_headlines
	end

	def test_it_converts_h5_tags
		headline = HeadlineConverter.new("#####Testing H5 Tags")
		assert_equal "<h5>Testing H5 Tags</h5>", headline.h5_tag
		assert_equal "<h5>Testing H5 Tags</h5>", headline.convert_headlines
	end
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