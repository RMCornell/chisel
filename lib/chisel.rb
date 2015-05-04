require 'pry'
require './lib/header_converter'


=begin
Level 1 Basics
  1. Identify chunks of text
    -two consecutive lines = 1 chunk of text
    -any text with spaces between them are two chunks of text
  2. If chunk of text starts with # convert to header
    -if not chunk of text is turned into a paragraph
=end

class Chisel
  attr_reader :message
  def initialize(message)
    @message = message
  end

  def convert_html
    message.split("\n\n").map do |line|
      if line.match(/^[#]/)
        HeaderConverter.new(line).convert_all_headers
      end
    end
  end

end

if __FILE__ == $0
  input                 = ARGV[0]
  message               = File.read(input)
  converted_message     = Chisel.new(message).convert_html.join("\n\n")
  html_file = File.open(ARGV[1], 'w')
  html_file << converted_message
  html_file.close

  puts "Converted #{ARGV[0]} (#{message.count("\n")} lines) to #{ARGV[1]} (#{converted_message.count("<\n>")} lines)"
end


