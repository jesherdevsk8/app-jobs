class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Associações
  has_many :vacancies

  # Validates
  validates :name, presence: true
  validates :description, length: { minimum: 3, maximum: 1000}, presence: true
  
end
