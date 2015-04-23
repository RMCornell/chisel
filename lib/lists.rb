class Lists
	attr_reader :list_items
	def initialize(list_items)
		@list_items = list_items
	end

	def ul_items
		if list_items.start_with?("*")
			"<ul>\n" + list_items.gsub!(/[* ] (.*?)$/, '<li>\\1</li>') + "\n</ul>"
		else
			list_items
		end
	end

	def ol_items
		if list_items[0].to_i > 0
			"<ol>\n" + list_items.gsub!( /^\d. (.*?)$/, '<li>\\1</li>') + "\n</ol>"
		end
	end
end

