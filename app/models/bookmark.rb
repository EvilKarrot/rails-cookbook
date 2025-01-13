class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category
  validates :category, :recipe, presence: true
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
end
