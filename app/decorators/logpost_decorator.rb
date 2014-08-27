class LogpostDecorator < Draper::Decorator
  delegate_all
  delegate :current_page, :per_page, :offset, :total_entries, :total_pages
  decorates_association :logpost

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  def created_at
    logpost.content.split(%r{\n}).reduce([]) do |acc, v|
      acc << "<a href = '#L#{acc.length}' style='text-decoration: none'><code class='language-javascript'>#{v}</code></a>"
    end.join
  end

end
