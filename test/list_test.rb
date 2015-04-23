require_relative 'test_helper'
require './lib/list_converter'

class ListTest < MiniTest::Test
	def test_list_header_exists
		assert List.new("List Header:")
	end

	def test_it_adds_unordered_list_item_tags
		list = List.new("* List Item")
		assert_equal "<li>List Item</li>", list.unordered_list_items
	end

	def test_it_adds_ordered_list_item_tags
		list = List.new("1. List Item")
		assert_equal "<li>List Item</li>", list.ordered_list_items
	end


end