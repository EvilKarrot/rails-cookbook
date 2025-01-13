class Recipe < ApplicationRecord
  has_many :bookmarks
  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
