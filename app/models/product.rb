class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: {maximum: 50}
  validates :price, presence: true, numericality: { greater_than: 0}

  belongs_to :category
end
