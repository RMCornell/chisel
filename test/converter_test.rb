require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/converter'

class ConverterTest < MiniTest::Test
	def test_converter_exists
		assert Converter.new("# My Life in Desserts")
	end

	def test_converts_h1_tags
		converter = Converter.new("# My Life in Desserts")
		assert_equal "<h1>My Life in Desserts</h1>\n", converter.h1_tags
		assert_equal "<h1>My Life in Desserts</h1>\n", converter.convert_headlines
	end

	def test_converts_h2_tags
		converter = Converter.new("## My Life in Desserts")
		assert_equal "<h2>My Life in Desserts</h2>\n", converter.h2_tags
		assert_equal "<h2>My Life in Desserts</h2>\n", converter.convert_headlines
	end

	def test_converts_h3_tags
		converter = Converter.new("### My Life in Desserts")
		assert_equal "<h3>My Life in Desserts</h3>\n", converter.h3_tags
		assert_equal "<h3>My Life in Desserts</h3>\n", converter.convert_headlines
	end

	def test_converts_h4_tags
		converter = Converter.new("#### My Life in Desserts")
		assert_equal "<h4>My Life in Desserts</h4>\n", converter.h4_tags
		assert_equal "<h4>My Life in Desserts</h4>\n", converter.convert_headlines
	end

	def test_converts_h5_tags
		converter = Converter.new("##### My Life in Desserts")
		assert_equal "<h5>My Life in Desserts</h5>\n", converter.h5_tags
		assert_equal "<h5>My Life in Desserts</h5>\n", converter.convert_headlines
	end

	def test_it_converts_em_tags
		converter = Converter.new("You just *have* to try the cheesecake,")
		assert_equal "You just <em>have</em> to try the cheesecake,", converter.em_tags
	end

	def test_it_converts_strong_tags
		converter = Converter.new("**Food & Wine** this place has been packed every night.")
		assert_equal "<strong>Food & Wine</strong> this place has been packed every night.", converter.strong_tags
	end

	def test_it_converts_strong_and_em_tags_mixed_in_same_line
		converter = Converter.new("My *emphasized and **stronged** text* is awesome.")
		assert_equal "My <em>emphasized and <strong>stronged</strong> text</em> is awesome.", converter.nested_tags
	end
	def test_it_converts_ampersand
		converter = Converter.new("Food & Wine")
		assert_equal "Food &amp; Wine", converter.ampersand_tags
	end

	def test_it_adds_closing_p_tags_to_paragraph
		message = "\n\n"
		converter = Converter.new(message)
		result = "\n</p>\n"
		assert_equal result, converter.end_of_paragraph
	end

	def test_it_puts_opening_paragraph_tag_at_start_of_paragraph
		message = "This is my paragraph!"
		converter = Converter.new(message)
		result = "<p>\nThis is my paragraph!"
		assert result, converter.start_of_paragraph
	end








end
