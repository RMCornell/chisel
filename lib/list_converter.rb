
class List
	attr_reader :list_item

	def initialize(list_item)
		@list_item = list_item
	end

	def unordered_list_items
		if list_item.start_with?("*")
			list_item.gsub!(/[*] (.*)$/, '<li>\\1</li>')
		else
			list_item
		end
	end

	def ordered_list_items
		if list_item.scan(/^[0-9]./)
			list_item.gsub!(/^[0-9]. (.*)$/, '<li>\\1</li>')
		end
	end



=begin
headline.gsub!(/^#### *(.*?)$/, '<h4>\\1</h4>')

				My favorite cuisines are:

				* Sushi
				* Barbeque
				* Mexican

				<p>
					My favorite cuisines are:
				</p>

				<ul>
					<li>Sushi</ li>
					<li>Barbeque</li>
					<li>Mexican</ li>
				</ul>
=end

end



=begin

My favorite cuisines are:

1. Sushi
2. Barbeque
3. Mexican
=end
