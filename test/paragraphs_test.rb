require_relative 'test_helper'
require './lib/paragraphs'

class ParagraphsTest < MiniTest::Test
	def test_paragraphs_exist
		assert Paragraphs.new("Paragraphs")
	end

end