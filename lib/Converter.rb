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
end

class StrongConverter
	attr_reader :strong

	def initialize(strong)
		@strong = strong
	end
end

class ParagraphTag
	attr_reader :paragraph

	def initialize(paragraph)
		@paragraph = paragraph
	end
end