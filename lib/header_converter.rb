class HeaderConverter
  attr_reader :line

  def initialize(line)
    @line = line
  end

  def convert_all_headers
      if line.to_s.start_with?("######")
        convert_h6_headers
      elsif line.to_s.start_with?("#####")
        convert_h5_headers
      elsif line.to_s.start_with?("####")
        convert_h4_headers
      elsif line.to_s.start_with?("###")
        convert_h3_headers
      elsif line.to_s.start_with?("##")
        convert_h2_headers
      elsif line.to_s.start_with?("#")
        convert_h1_headers
      else
        line
      end
  end

  def convert_h1_headers
    line.sub("# ", "<h1>") + "</h1>"
  end

  def convert_h2_headers
    line.sub("## ", "<h2>") + "</h2>"
  end

  def convert_h3_headers
    line.sub("### ", "<h3>") + "</h3>"
  end

  def convert_h4_headers
    line.sub("#### ", "<h4>") + "</h4>"
  end

  def convert_h5_headers
    line.sub("##### ", "<h5>") + "</h5>"
  end

  def convert_h6_headers
    line.sub("###### ", "<h6>") + "</h6>"
  end
end
