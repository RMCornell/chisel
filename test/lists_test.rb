require_relative 'test_helper'
require './lib/lists'

class ListsTest < MiniTest::Test
	def test_lists_exist
		assert Lists.new("Lists")
	end

	def test_it_handles_unordered_list_items
		list = Lists.new("* Unordered List Item")
		assert_equal "<li>Unordered List Item</li>", list.ul_items
	end

	def test_it_handles_ordered_list_items
		list = Lists.new("1. Ordered List Item")
		assert_equal "<li>Ordered List Item</li>", list.ol_items
	end
end