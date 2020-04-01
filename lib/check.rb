# frozen_string_literal: true

# comment
class Check
  def get_heading(line)
    line.gsub(/^\W+/, '').chomp
  end

  def check_head_length(line)
    heading = get_heading(line)
    heading.length < 15
  end

  def get_url(line)
    line[/.*\(([^\)]*)/, 1]
  end

  def url(line)
    !get_url(line).empty?
  end
end
