class Review < ApplicationRecord
  belongs_to :movie
  validates :name, presence: true, length: {maximum: 30}
  validates :content, presence: true, length: {maximum: 380 }
  validates :score, presence: true
end
