class BookshelfController < ApplicationController
  def index
  @books = Book.order(:book_title)
  end
end
