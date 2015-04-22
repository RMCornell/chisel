class Converter
	attr_accessor :message

	def initialize(message)
		@message = message
	end
end

class HeadlineConverter
	attr_reader :headline

	def initialize(headline)
		@headline = headline
	end

	def h1_tag
		headline.gsub(/^# *(.*?)$/, '<h1>\\1</h1>')
	end

	def h2_tag
		headline.gsub(/^## *(.*?)$/, '<h2>\\1</h2>')
	end

	def h3_tag
		headline.gsub(/^### *(.*?)$/, '<h3>\\1</h3>')
	end

	def h4_tag
		headline.gsub(/^#### *(.*?)$/, '<h4>\\1</h4>')
	end

	def h5_tag
		headline.gsub(/^##### *(.*?)$/, '<h5>\\1</h5>')
	end

	def convert_headlines
		if headline.scan(/#/).count == 1
			h1_tag
		elsif headline.scan(/#/).count == 2
			h2_tag
		elsif headline.scan(/#/).count == 3
			h3_tag
		elsif headline.scan(/#/).count == 4
			h4_tag
		else headline.scan(/#/).count == 5
			h5_tag
		end
	end
end


class EmphasisConverter
	attr_reader :emphasis

	def initialize(emphasis)
		@emphasis = emphasis
	end

	def convert_emphasis
		emphasis.gsub!(/(\b[*])/, '</em>')
		emphasis.gsub(/([*]\b)/, '<em>')
	end
end

class StrongConverter
	attr_reader :strong

	def initialize(strong)
		@strong = strong
	end

	def convert_strong
		strong.gsub!(/([*][*][^a-z]\b)/, '</strong> ')
		strong.gsub(/([*][*]\b)/, '<strong>')
	end
end

class ParagraphTag
	attr_reader :paragraph

	def initialize(paragraph)
		@paragraph = paragraph
	end
end

=begin
def em_tags
		message.gsub!(/[*][\s]/, '</em> ')
		message.gsub(/[*]/, '<em>')
	end

	def strong_tags
		message.gsub!(/([*][*][\s])/, '</strong> ')
		message.gsub(/([*][*])/, '<strong>')
	end

	def ampersand_tags
		message.gsub(/&/, "&amp;")
	end

	def nested_tags
		message.gsub!(/[*][*]\b/, '<strong>')
		message.gsub!(/(\b[*][*])/, '</strong>')
		em_tags
	end

	def start_of_paragraph
		if message.start_with? == message.match(/[\W]/)
			convert_headlines
		else
			message.gsub(/[\b]/, "<p>")
		end
	end

	def end_of_paragraph
		message.gsub(/[\n][\n]/, "\n</p>\n")
	end
end
=end
