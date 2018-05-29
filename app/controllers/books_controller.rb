class BooksController < ApplicationController
  before_action :find_book, only: %i[edit update destroy show]

  def index
    @books = SearchBook.new(search_params).call
  end

  def show; end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = 'Книга добавлена в каталог!'
      redirect_to @book
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @book.update_attributes(book_params)
      flash[:success] = 'Книга отредактирована!'
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    @book.destroy!
    flash[:success] = 'Книга удалена'
    redirect_to books_url
  end

  private

  def book_params
    params.require(:book).permit(:title)
  end

  def find_book
    @book = Book.find(params[:id])
  end

  def search_params
    params.fetch(:search, {}).permit(:title)
  end
end
