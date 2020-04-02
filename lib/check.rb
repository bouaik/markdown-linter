# comment
class Check
  attr_accessor :headings, :urls
  def initialize
    @headings = []
    @urls = []
  end

  def get_heading(line)
    line.gsub(/^\W+/, '').chomp
  end

  def duplicate_headings(line, headings)
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

  def duplicate_urls(line, urls)
    urls << get_url(line)
    if urls.uniq == urls
      true
    else
      urls.pop
      false
    end
  end

  def url(line)
    !get_url(line).empty?
  end

  def line_length(line)
    line.length < 50
  end
end
