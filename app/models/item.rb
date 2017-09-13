class Item < ApplicationRecord
  has_many :item_categories
  has_many :categories, through: :item_categories

  validates :title, presence: true, uniqueness: true
  validates :description, :price, presence: true
end
