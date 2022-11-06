class BooksController < ApplicationController
  def top
  end

  def show
  end

  def index
    @books=Book.all
    book=Book.new
    book.save
  end

  def edit
  end
  
  private
  def list_params
    require.permit(:title, :body)
  end
end
