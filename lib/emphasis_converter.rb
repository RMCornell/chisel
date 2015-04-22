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