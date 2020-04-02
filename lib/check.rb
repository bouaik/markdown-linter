# comment
class Check
  attr_accessor :headings
  def initialize
    @headings = []
  end

  def get_heading(line)
    line.gsub(/^\W+/, '').chomp
  end

  def duplicate(line, headings)
    headings << get_heading(line)
    if headings.uniq == headings
      true
    else
      headings.pop
      false
    end
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
