module Parser
  def self.parse_log(text)
    text = parse_date(text)
    
    ['[', ']', '{', '}'].each do |v|
      text["#{v}"] = "<font color=\"red\">#{v}</font>" if text.include? v
    end    
    text
  end

  # def self.parse_numbers(text)
  #   text.split(/\D+/).each() do |val|
  #     if val.to_i > 0 
  #       puts val
  #       text["#{val}"] = "<font color=\"blue\">#{val}</font>"
  #     end
  #   end
  #   text
  # end

  def self.parse_date(text)
    text.match(/\d{4}\-\d{1,2}\-\d{1,2}/).to_a.each() do |val|
      text["#{val}"] = "<font color=\"blue\">#{val}</font>"
    end
    text
  end

  def self.parse_time(text)
    text.match(/\d{2}\:\d{2}\:\d{2}/).to_a.each() do |val|
      text["#{val}"] = "<font color=\"navy\">#{val}</font>"
    end
  end

  def self.parse_telephone(text)
    
  end
end