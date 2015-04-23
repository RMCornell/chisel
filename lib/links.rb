require 'pry'

class Links
	attr_reader :link
	def initialize(link)
		@link = link
	end

	def open_p_tag
		link.chars.unshift("<p>")
	end

	def closing_p_tag
		open_p_tag.push("</p>")
	end

	def split_link
		link.split(/[\s,(,)]/)
	end

	# def convert_hyperlink
	# 	split_link.map do |x|
	# 		if x == "[an example]"
	# 			x = "<a href="
	# 		end
	# 	end
	# end

end

#word.split(/[\s,']/)




=begin
This is [an example](http://example.com/ "Title") inline link.

[This link](http://example.net/) has no title attribute.
Will produce:

<p>This is <a href="http://example.com/" title="Title">
an example</a> inline link.</p>

<p><a href="http://example.net/">This link</a> has no
title attribute.</p>
This is [an example](http://example.com/ "Title") inline link.

[This link](http://example.net/) has no title attribute.
Will produce:

<p>This is <a href="http://example.com/" title="Title">
an example</a> inline link.</p>

<p><a href="http://example.net/">This link</a> has no
title attribute.</p>
=end

# link = Links.new("This is [an example](http://example.com/ 'Title' ) inline link.")
# binding.pry
