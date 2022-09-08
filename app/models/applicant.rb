class Applicant < ApplicationRecord
  belongs_to :vacancy
  has_one_attached :curriculum

  validates :name, presence: true
end
