class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Constants
  BOSTON_COLLEGES = [
    'Northeastern University',
    'Boston University',
    'Massachusetts Institute of Technology (MIT)',
    'Harvard University',
    'University of Massachusetts Boston',
    'Boston College',
    'Emerson College',
    'Suffolk University',
    'Simmons University',
    'Wentworth Institute of Technology',
    'Massachusetts College of Art and Design',
    'Berklee College of Music',
    'New England Conservatory',
    'Tufts University',
    'Brandeis University',
    'Other'
  ].freeze

  # Relationships
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  # Validations
  validates :college, presence: true, inclusion: { in: BOSTON_COLLEGES }

  def display_name
    email.split('@').first
  end
end
