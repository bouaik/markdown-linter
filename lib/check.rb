class Check
    def get_heading(line)
      line.gsub(/^\W+/, '').chomp
    end
  
    def check_head_length(line)
      heading = get_heading(line)
      heading.length < 40
    end
  end
  