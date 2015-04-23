class Headers
	attr_reader :header
	def initialize(header)
		@header = header
	end

	def h1_convert
		header.gsub /^[#] (.*?)$/, '<h1>\\1</h1>'
	end

	def h2_convert
		header.gsub /^[#][#] (.*?)$/, '<h2>\\1</h2>'
	end

	def h3_convert
		header.gsub /^[#][#][#] (.*?)$/, '<h3>\\1</h3>'
	end

	def h4_convert
		header.gsub /^[#][#][#][#] (.*?)$/, '<h4>\\1</h4>'
	end

	def h5_convert
		header.gsub /^[#][#][#][#][#] (.*?)$/, '<h5>\\1</h5>'
	end

	def convert_headers
		if header.match(/^[#][#][#][#][#]/)
			h5_convert
		elsif header.match(/^[#][#][#][#]/)
			h4_convert
		elsif header.match(/^[#][#][#]/)
			h3_convert
		elsif header.match(/^[#][#]/)
			h2_convert
		elsif header.match(/^[#]/)
			h1_convert
		else
			header
		end

	end
end

