require_relative 'test_helper'
require './lib/list_converter'

class ListTest < MiniTest::Test
	def test_list_header_exists
		assert List.new("List Header:")
	end

	def test_it_adds_list_item_tags
		list = List.new("* List Item")
		assert_equal "<li>List Item</li>", list.list_items
	end


end