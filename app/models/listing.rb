class Listing < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  validates :name, presence: true
  validates :description, presence: true
  validates :price, numericality: { greater_than: 0.50, less_than: 100000 }
  validate :image_type

  def thumbnail(input)
    return self.images[input].variant(resize: "300x300!").processed
  end

  private

  def image_type
    if images.attached? == false
      errors.add(:images, "are missing")
    end
  end

end
