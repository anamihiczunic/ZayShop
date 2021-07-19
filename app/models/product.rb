class Product < ApplicationRecord
  before_destroy :not_referenced_by_any_product_items
  mount_uploader :image, ImageUploader
  has_many :product_items

  validates :title, :description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true


  def not_referenced_by_any_product_items
    if product_items.empty?
      return true
    else
      errors.add(:base, "You have Product Items")
      return false
    end
  end

end
