class Category < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :recipies, through: :bookmarks
  validates :name, uniqueness: true, presense: true
end
