class Company < ApplicationRecord
  # Associações
  has_many :vacancies

  # Validates
  validates :name, presence: true
  validates :description, length: { minimum: 3, maximum: 1000}, presence: true
  
end
