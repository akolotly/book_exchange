class SearchBook
  def initialize(search_params)
    @title = search_params[:title]
  end

  def call
    search
  end

  private

  def search
    if @title.present?
      Book.where('title ILIKE ?', "%#{@title}%")
    else
      Book.all
    end
  end
end
