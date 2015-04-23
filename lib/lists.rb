class Lists
	attr_reader :list_items

	def initialize(list_items)
		@list_items = list_items
	end



	# def ul_tags
	# 	if list_items.start_with?("*")
	# 		list_items.gsub! /^[*] (.*?)$/, "<ul>\n"
	# 	end
	# end

	def ul_items
		list_items.gsub!(/^[*] (.*?)$/, '<li>\\1</li>')
	end

	def ol_items
		if list_items.match(/^\d./)
		list_items.gsub!(/\d. *(.*?)$/, '<li>\\1</li>')
		else
			list_items
		end

	end
end
