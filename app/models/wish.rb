class Wish < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :name, presence: true, length: { in: 3..40 }
  validates :position, inclusion: { in: [nil, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]}
  # , uniqueness: { scope: :user}

  # validates :position, presence: true
end
