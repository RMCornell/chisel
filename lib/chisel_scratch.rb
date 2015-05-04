class Headers
  attr_reader :message
  def initialize(message)
    @message = message
  end

  def message
    @message = ["# My Life in Desserts\n", "\n", "## Chapter 1: The Beginning\n", "\n", "\"You just *have* to try the cheesecake,\" he said. \"Ever since it appeared in\n", "**Food & Wine** this place has been packed every night.\""]
  end

  def convert_headers
    message.map do |line|
      if line.include?("##")
        line.gsub("##", "<h2>")
      elsif line.include?("#")
        line.gsub("#", "<h1>") + "</h1>"
        elsif line.match()
      else
        line
      end
    end
  end
end

message = ["# My Life in Desserts\n", "\n", "## Chapter 1: The Beginning\n", "\n", "\"You just *have* to try the cheesecake,\" he said. \"Ever since it appeared in\n", "**Food & Wine** this place has been packed every night.\""]
header = Headers.new(message)
puts header.convert_headers