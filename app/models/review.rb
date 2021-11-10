class Review < ApplicationRecord
  belongs_to :restaurant
  # creates the method => review.restaurant
  validates :content, presence: true
end
