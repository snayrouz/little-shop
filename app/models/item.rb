class Item < ApplicationRecord
  has_many :item_categories
  has_many :categories, through: :item_categories

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
end
