class Category < ApplicationRecord
  # Relationships
  has_many :posts, dependent: :destroy

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  def posts_count
    posts.count
  end
end
