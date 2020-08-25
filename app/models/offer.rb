class Offer < ApplicationRecord
  belongs_to :recruiter
  has_many :applies
end
