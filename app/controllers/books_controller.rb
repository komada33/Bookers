class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to 'books/index'
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def edit
  end

  def show
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
