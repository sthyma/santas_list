class Category < ApplicationRecord
  has_many :categories

  validates :name, presence: true, inclusion: { in: ['Livres', 'Électroniques', 'Maison', 'Vêtements', 'Sports', 'Jouets', 'Musique et films', 'Beauté', 'Autres']}
  validates :position, presence: true, inclusion: { in: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]}
end
