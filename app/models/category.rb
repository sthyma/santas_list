class Category < ApplicationRecord
  has_many :categories

  validates :name, presence: true, inclusion: { in: ['Livres', 'Électroniques', 'Maison', 'Vêtements', 'Sports', 'Jouets', 'Musique et films', 'Beauté', 'Autres']}
end
