class Recipe < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :categories
  validates :name, :description, presence: true
  validates :name, uniqueness: true
  validates :rating, numericality: { in: 0..10 }
end
