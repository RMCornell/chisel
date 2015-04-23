require_relative 'test_helper'
require './lib/paragraphs'

class ParagraphsTest < MiniTest::Test
	def test_paragraphs_exist
		assert Paragraphs.new("Paragraphs")
	end

	def test_it_puts_opening_and_closing_para
		paragraph = Paragraphs.new("paragraph")
		assert_equal "
<p>
paragraph
</p>", paragraph.paragraph_tags
	end

end