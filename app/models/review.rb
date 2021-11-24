class Review < ApplicationRecord
  belongs_to :list

  validates :comment, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: 1..10
end
