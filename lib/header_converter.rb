class HeaderConverter < Chisel

  def convert_all_headers
    if message.start_with?("###### ")
      convert_h6_headers
    elsif message.start_with?("##### ")
      convert_h5_headers
    elsif message.start_with?("#### ")
      convert_h4_headers
    elsif message.start_with?("### ")
      convert_h3_headers
    elsif message.start_with?("## ")
      convert_h2_headers
    elsif message.start_with?("# ")
      convert_h1_headers
    end
  end

  def convert_h1_headers
    message.sub("# ", "<h1>") + "</h1>"
  end

  def convert_h2_headers
    message.sub("## ", "<h2>") + "</h2>"
  end

  def convert_h3_headers
    message.sub("### ", "<h3>") + "</h3>"
  end

  def convert_h4_headers
    message.sub("#### ", "<h4>") + "</h4>"
  end

  def convert_h5_headers
    message.sub("##### ", "<h5>") + "</h5>"
  end

  def convert_h6_headers
    message.sub("###### ", "<h6>") + "</h6>"
  end
end