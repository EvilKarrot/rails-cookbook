class Recipe < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :categories
  validates :name, :description, presence: true
  validates :name, uniqueness: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
end
