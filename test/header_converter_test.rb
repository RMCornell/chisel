require_relative 'test_helper'
require './lib/header_converter'

class HeaderConverterTest < MiniTest::Test

  def test_header_converter_exists
    assert HeaderConverter.new("message")
  end

  def test_h1_converts_header_tags
    header = HeaderConverter.new("# Converting H1 Headers")
    assert_equal "<h1>Converting H1 Headers</h1>", header.convert_h1_headers
    assert_equal "<h1>Converting H1 Headers</h1>", header.convert_all_headers
  end

  def test_h2_converts_header_tags

    header = HeaderConverter.new("## Converting H2 Headers")
    assert_equal "<h2>Converting H2 Headers</h2>", header.convert_h2_headers
    assert_equal "<h2>Converting H2 Headers</h2>", header.convert_all_headers
  end

  def test_h3_converts_header_tags

    header = HeaderConverter.new("### Converting H3 Headers")
    assert_equal "<h3>Converting H3 Headers</h3>", header.convert_h3_headers
    assert_equal "<h3>Converting H3 Headers</h3>", header.convert_all_headers
  end

  def test_h4_converts_header_tags

    header = HeaderConverter.new("#### Converting H4 Headers")
    assert_equal "<h4>Converting H4 Headers</h4>", header.convert_h4_headers
    assert_equal "<h4>Converting H4 Headers</h4>", header.convert_all_headers
  end

  def test_h5_converts_header_tags

    header = HeaderConverter.new("##### Converting H5 Headers")
    assert_equal "<h5>Converting H5 Headers</h5>", header.convert_h5_headers
    assert_equal "<h5>Converting H5 Headers</h5>", header.convert_all_headers
  end

  def test_h6_converts_header_tags

    header = HeaderConverter.new("###### Converting H6 Headers")
    assert_equal "<h6>Converting H6 Headers</h6>", header.convert_h6_headers
    assert_equal "<h6>Converting H6 Headers</h6>", header.convert_all_headers
  end
end