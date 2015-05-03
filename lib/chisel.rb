require 'pry'

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

  def convert_to_html
    #run methods here

  end

end

if __FILE__ == $0
  input= ARGV[0]
  output = ARGV[1]
  message  = File.readlines(input)
  converted_message      = Chisel.new(message).convert_to_html
  File.write(output, "w")
  # puts "Converted #{input} (#{message.count("\n")} lines) to #{output} (#{converted_message.count("<\n>")} lines)"
end


chisel = Chisel.new(converted_message)
chisel.convert_to_html

