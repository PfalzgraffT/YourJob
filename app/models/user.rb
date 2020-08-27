class User < ApplicationRecord
  has_many :applies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_pic
  #validates :last_name, :first_name, :address, :age, :phone_number, :location, :activity, :contract, presence: true # rajouter 3 skills qu'on choisit
  #validates :phone_number, uniqueness: true, numericality: { only_integer: true } # rajouter les 3 skills qu'on choisit


  def matching_percentage_calc
    <<~PLOP
      ( round(
          100.0 * (
            (CASE WHEN offers.interpersonal_skills <= '#{interpersonal_skills}' THEN 1  ELSE 0 END) +
            (CASE WHEN offers.rigor <= '#{rigor}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.independence <= '#{independence}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.communication <= '#{communication}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.teamwork <= '#{teamwork}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.creativity <= '#{creativity}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.initiative <= '#{initiative}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.stress_management <= '#{stress_management}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.perseverance <= '#{perseverance}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.decision_making <= '#{decision_making}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.curiosity <= '#{curiosity}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.adaptability <= '#{adaptability}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.enthusiam <= '#{enthusiam}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.flexibility <= '#{flexibility}' THEN 1 ELSE 0 END) +
            (CASE WHEN offers.empathy <= '#{empathy}' THEN 1 ELSE 0 END)
          )
          / 15
        , 2)
      )
    PLOP
  end
end
