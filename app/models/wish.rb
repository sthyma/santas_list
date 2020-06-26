class Wish < ApplicationRecord
  belongs_to :category
  belongs_to :user

  # validates :position, presence: true, inclusion: { in: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]}
end
