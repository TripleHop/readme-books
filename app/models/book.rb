class Book < ApplicationRecord
  # belongs_to :author
  # validates :book_title
  # has_one_attached :picture
  belongs_to :user
  has_many :line_items
  has_one_attached :picture
  validates :book_title, :author, :blurb, :price, :condition, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  before_destroy :ensure_not_referenced_by_any_line_item
  private

  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
    errors.add(:base, 'Line Items present')
    throw :abort
  end
  end
end
