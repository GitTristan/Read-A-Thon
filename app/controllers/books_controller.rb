class BooksController < ApplicationController
  def index
  end
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new params[:book]
    if @book.save
      redirect_to @book
    else
      render "new"
    end
  end
end