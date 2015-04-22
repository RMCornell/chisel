class ParagraphTag
	attr_reader :paragraph

	def initialize(paragraph)
		@paragraph = paragraph
	end

	def opening_paragraph_tag
		# paragraph.gsub(/\n^./, "\n<p>\n")
		"Hi front is working"
	end

	def closing_paragraph_tag
		# message.gsub(/[\n][\n]/, "\n</p>\n")
		"Hi end is working"
	end
end