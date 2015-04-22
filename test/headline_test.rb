require_relative 'test_helper'
require './lib/headline_converter'

class HeadlineConverterTest < MiniTest::Test
	def test_headline_converter_exists
		assert HeadlineConverter.new("It Exists")
	end

	def test_it_converts_h1_tags
		headline = HeadlineConverter.new("# Testing H1 Tags")
		assert_equal "<h1>Testing H1 Tags</h1>", headline.h1_tag

	end

	def test_it_converts_h2_tags
		headline = HeadlineConverter.new("## Testing H2 Tags")
		assert_equal "<h2>Testing H2 Tags</h2>", headline.h2_tag

	end

	def test_it_converts_h3_tags
		headline = HeadlineConverter.new("### Testing H3 Tags")
		assert_equal "<h3>Testing H3 Tags</h3>", headline.h3_tag

	end

	def test_it_converts_h4_tags
		headline = HeadlineConverter.new("#### Testing H4 Tags")
		assert_equal "<h4>Testing H4 Tags</h4>", headline.h4_tag

	end

	def test_it_converts_h5_tags
		headline = HeadlineConverter.new("##### Testing H5 Tags")
		assert_equal "<h5>Testing H5 Tags</h5>", headline.h5_tag

	end
end