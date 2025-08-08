class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # Validations
  validates :content, presence: true, length: { minimum: 2, maximum: 1000 }

  # Scopes
  scope :recent, -> { order(created_at: :desc) }
end
