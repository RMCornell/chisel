require_relative 'chisel_parser'

markdown = File.read ARGV[0]
html     = ChiselParser.new(markdown).to_html
File.write ARGV[1], html