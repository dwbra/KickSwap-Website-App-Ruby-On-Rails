class Listing < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  validates :price, numericality: { greater_than: 0.50, less_than: 100000 } 
end
