json.extract! book, :id, : book_title, :author, :blurb, :price, :condition, :created_at, :updated_at
json.url book_url(book, format: :json)
