class Offer < ApplicationRecord
  belongs_to :recruiter
  has_many :applies
  #validates :title, :activity, :description, :location, :contract, :starts_on, presence: true # rajouter 3 skills qu'on choisit
  #validates :description, length: { maximum: 500 }
  #validates :starts_on, format: { with: /([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/ }
  ## validates rajouter les 3 skills qu'on choisit, numericality: { only_integer: true }
end
