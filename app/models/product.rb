class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :title, :description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true

end