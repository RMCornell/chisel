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
	end

	def test_converts_h2_tags
		converter = Converter.new("## My Life in Desserts")
		assert_equal "<h2>My Life in Desserts</h2>\n", converter.h2_tags
	end

	def test_converts_h3_tags
		converter = Converter.new("### My Life in Desserts")
		assert_equal "<h3>My Life in Desserts</h3>\n", converter.h3_tags
	end

	def test_converts_h4_tags
		converter = Converter.new("#### My Life in Desserts")
		assert_equal "<h4>My Life in Desserts</h4>\n", converter.h4_tags
	end

	def test_converts_h5_tags
		converter = Converter.new("##### My Life in Desserts")
		assert_equal "<h5>My Life in Desserts</h5>\n", converter.h5_tags
	end
end
