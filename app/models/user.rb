class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  has_many :wishes
  
  validates :name, presence: true
  validates :birthday, presence: true
  validates :gender, inclusion: { in: ['F', 'M']}
end
