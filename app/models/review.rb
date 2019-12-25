class Review < ApplicationRecord
  belongs_to :movie
  validates :name, presence: true
  validates :content, presence: true
  validates :score, presence: true, length: {maximum: 5}
end
