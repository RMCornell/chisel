require_relative 'test_helper'
require './lib/paragraph_converter'

class ParagraphTagTest < MiniTest::Test
	def test_paragraph_tag_exists
		assert ParagraphTag.new("It Exists")
	end

	def test_it_puts_opening_p_tag_at_start_of_paragraphs

		paragraph = ParagraphTag.new("\n")
		assert_equal "</p>", paragraph.opening_paragraph_tag
	end
end