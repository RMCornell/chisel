require_relative 'test_helper'
require './lib/links'

class LinksTest < MiniTest::Test
	def test_links_exist
		assert Links.new("Links")
	end

	def test_it_converts_links
		skip
		link = Links.new("This is [an example](http://example.com/ 'Title' ) inline link.")
		assert_equal "<p>This is <a href='http://example.com/ 'title='Title'>an example</a> inline link.</p>", link.convert_links
	end

	def test_it_adds_opening_paragraph_tags
		link = Links.new("This is [an example](http://example.com/ 'Title' ) inline link.")
		assert_equal ["<p>", "T", "h", "i", "s", " ", "i", "s", " ", "[", "a", "n", " ", "e", "x", "a", "m", "p", "l", "e", "]", "(", "h", "t", "t", "p", ":", "/", "/", "e", "x", "a", "m", "p", "l", "e", ".", "c", "o", "m", "/", " ", "'", "T", "i", "t", "l", "e", "'", " ", ")", " ", "i", "n", "l", "i", "n", "e", " ", "l", "i", "n", "k", "."], link.open_p_tag
	end

	def test_it_adds_closing_p_tag
		link = Links.new("This is [an example](http://example.com/ 'Title' ) inline link.")
		assert_equal ["<p>", "T", "h", "i", "s", " ", "i", "s", " ", "[", "a", "n", " ", "e", "x", "a", "m", "p", "l", "e", "]", "(", "h", "t", "t", "p", ":", "/", "/", "e", "x", "a", "m", "p", "l", "e", ".", "c", "o", "m", "/", " ", "'", "T", "i", "t", "l", "e", "'", " ", ")", " ", "i", "n", "l", "i", "n", "e", " ", "l", "i", "n", "k", ".", "</p>"], link.closing_p_tag
	end

	def test_it_splits_link
		link = Links.new("This is [an example](http://example.com/ 'Title' ) inline link.")
		assert_equal ["This", "is", "[an", "example]", "http://example.com/", "'Title'", "", "", "inline", "link."], link.split_link
	end

	def test_it_converts_hyperlink
		skip
		link = Links.new("This is [an example](http://example.com/ 'Title' ) inline link.")
		assert_equal "some shit", link.convert_hyperlink
	end



end