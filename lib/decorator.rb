module Decorator
  def self.decorate_post(text)
    puts text
    text.split(%r{\n}).reduce([]) do |acc, v|
      acc << "<a href = '#L#{acc.length}' style='text-decoration: none'><code class = 'Markdown'>#{v}</code></a>"
    end.join
  end
end