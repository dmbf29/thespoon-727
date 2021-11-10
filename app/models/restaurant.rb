class Restaurant < ApplicationRecord
  # associations (has_many / belongs_to)
  has_many :reviews, dependent: :destroy # creates the method restaurant.reviews
  # validations
  validates :name, presence: true
end
