require_relative 'test_helper'

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

	def test_it_converts_emphasis_tags
		emphasis = EmphasisConverter.new("*Testing EM Tags*")
		assert_equal "<em>Testing EM Tags</em>", emphasis.convert_emphasis
	end
end

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

class ParagraphTagTest < MiniTest::Test
	def test_paragraph_tag_exists
		assert ParagraphTag.new("It Exists")
	end

	def test_it_puts_opening_p_tag_at_start_of_paragraphs
		skip
		paragraph = ParagraphTag.new("Testing opening paragraph tag")
		assert_equal "<p>
Testing opening paragraph tag ", paragraph.opening_paragraph_tag
	end
end