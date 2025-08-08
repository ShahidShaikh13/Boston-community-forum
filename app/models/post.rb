class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  # Relationships
  has_many :comments, dependent: :destroy

  # Validations
  validates :title, presence: true, length: { minimum: 5, maximum: 200 }
  validates :content, presence: true, length: { minimum: 10 }

  # Scopes
  scope :recent, -> { order(created_at: :desc) }
  scope :by_college, ->(college) { joins(:user).where(users: { college: college }) }
  scope :by_category, ->(category_id) { where(category_id: category_id) }

  def comments_count
    comments.count
  end

  def excerpt
    content.truncate(150)
  end
end
