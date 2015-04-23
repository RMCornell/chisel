require_relative 'test_helper'
require './lib/headers'

class HeadersTest < MiniTest::Test
	def test_headers_exists
		assert Headers.new("# Convert H1 Tags")
	end

	def test_it_converts_h5_tags
		header = Headers.new("##### Convert H5 Tags")
		assert_equal "<h5>Convert H5 Tags</h5>", header.h5_convert
		assert_equal "<h5>Convert H5 Tags</h5>", header.convert_headers
	end

	def test_it_converts_h4_tags
		header = Headers.new("#### Convert H4 Tags")
		assert_equal "<h4>Convert H4 Tags</h4>", header.h4_convert
		assert_equal "<h4>Convert H4 Tags</h4>", header.convert_headers
	end

	def test_it_converts_h3_tags
		header = Headers.new("### Convert H3 Tags")
		assert_equal "<h3>Convert H3 Tags</h3>", header.h3_convert
		assert_equal "<h3>Convert H3 Tags</h3>", header.convert_headers
	end

	def test_it_converts_h2_tags
		header = Headers.new("## Convert H2 Tags")
		assert_equal "<h2>Convert H2 Tags</h2>", header.h2_convert
		assert_equal "<h2>Convert H2 Tags</h2>", header.convert_headers
	end

	def test_it_converts_h1_tags
		header = Headers.new("# Convert H1 Tags")
		assert_equal "<h1>Convert H1 Tags</h1>", header.h1_convert
		assert_equal "<h1>Convert H1 Tags</h1>", header.convert_headers
	end




end