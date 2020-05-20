class Book < ApplicationRecord
  # belongs_to :author
  # validates :book_title
  # has_one_attached :picture
  belongs_to :user
  validates :book_title, :author, :blurb, :price, :condition, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
