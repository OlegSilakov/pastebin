module Parser
  def self.parse_log(text)
    puts text
    text.split(' ').reduce([]) do |acc, val|
      if val.include? '['
        # puts val
        acc << "<mark>#{val}</mark>"
      else
        acc << val
      end  
    end.join
  end
end