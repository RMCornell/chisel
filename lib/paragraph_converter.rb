class ParagraphTag
	attr_reader :paragraph

	def initialize(paragraph)
		@paragraph = paragraph
	end

	def opening_paragraph_tag
		paragraph.gsub("", "</p>\n\n<p>\n")
	end

end