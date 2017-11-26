class BooksController < ApplicationController
  def index
    # your code here
    @books = Book.all
  end

  def new
    render :new
  end

  def create
    Book.create(book_params)
    redirect_to books_url
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
