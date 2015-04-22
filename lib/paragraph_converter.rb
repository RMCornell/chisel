class ParagraphTag
	attr_reader :paragraph

	def initialize(paragraph)
		@paragraph = paragraph
	end

	def opening_paragraph_tag
		paragraph.gsub(/([a-zA-Z\w\W])/, "\n<p>\n\1\n</p>\n")
	end

	def closing_paragraph_tag
		"Hi end is working"
	end
end