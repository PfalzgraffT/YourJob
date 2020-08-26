class User < ApplicationRecord
  has_many :applies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_pic
  #validates :last_name, :first_name, :address, :age, :phone_number, :location, :activity, :contract, presence: true # rajouter 3 skills qu'on choisit
  #validates :phone_number, uniqueness: true, numericality: { only_integer: true } # rajouter les 3 skills qu'on choisit
end
