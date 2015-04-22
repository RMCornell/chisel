require_relative 'test_helper'
require './lib/list_converter'

class ListHeaderTest < MiniTest::Test
	def test_list_header_exists
		assert ListHeader.new("List Header:")
	end

	def test_it_converts_list_header
		header = ListHeader.new("\nList Header:")
		assert_equal "<p>
List Header:", header.list_header
	end
end