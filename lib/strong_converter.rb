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