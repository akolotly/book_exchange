module ApplicationHelper
  def default_title(page_title)
    base_title = "Book Exchange"
    return base_title if page_title.empty?
    " #{base_title} | #{page_title} "     
  end
end
