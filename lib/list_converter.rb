
class ListHeader
	attr_reader :header

	def initialize(header)
		@header = header
	end

	def list_header
		header.gsub(/([\n])/) { |m| "<p>\n" }
	end
=begin

"hello".gsub /([aeiou])/, '<\1>'            #=> "h<e>ll<o>"
"hello".gsub /([aeiou])/, "<\\1>"           #=> "h<e>ll<o>"
"hello".gsub(/([aeiou])/){ |m| "<#{$1}>" }  #=> "h<e>ll<o>"

				My favorite cuisines are:

				* Sushi
				* Barbeque
				* Mexican

				<p>
					My favorite cuisines are:
				</p>

				<ul>
					<li>Sushi</ li>
					<li>Barbeque</li>
					<li>Mexican</ li>
				</ul>
=end

end



=begin

My favorite cuisines are:

1. Sushi
2. Barbeque
3. Mexican
=end
