class Paragraphs
	attr_reader :paragraph
	def initialize(paragraph)
		@paragraph = paragraph
	end

	def paragraph_tags
		if paragraph.match(/^[a-zA-Z][^\n]/)
			paragraph.gsub!(/^[a-zA-Z][^\n] *(.*?)$/, "\n<p>\n\\0\n</p>")
		else paragraph.match(/^["]/)
			paragraph.gsub!(/^["] *(.*?)$/, "\n<p>\n\\0\n</p>")
		end
	end
end
