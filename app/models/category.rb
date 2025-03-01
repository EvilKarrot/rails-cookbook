class Category < ApplicationRecord
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy
  has_many :recipies, through: :bookmarks
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end
