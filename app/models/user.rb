class User < ApplicationRecord
  SOFT_SKILLS = %w[
    interpersonal_skills
    rigor
    independence
    communication
    teamwork
    creativity
    initiative
    stress_management
    perseverance
    decision_making
    curiosity
    adaptability
    enthusiam
    flexibility
    empathy
  ]
  has_many :applies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_pic
  #validates :last_name, :first_name, :address, :age, :phone_number, :location, :activity, :contract, presence: true # rajouter 3 skills qu'on choisit
  #validates :phone_number, uniqueness: true, numericality: { only_integer: true } # rajouter les 3 skills qu'on choisit


  #def matching_percentage_calc
  #  <<~PLOP
  #    ( round(
  #        100.0 * (
  #          (CASE WHEN offers.interpersonal_skills <= '#{interpersonal_skills}' THEN 1  ELSE 0 END) +
  #          (CASE WHEN offers.rigor <= '#{rigor}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.independence <= '#{independence}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.communication <= '#{communication}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.teamwork <= '#{teamwork}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.creativity <= '#{creativity}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.initiative <= '#{initiative}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.stress_management <= '#{stress_management}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.perseverance <= '#{perseverance}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.decision_making <= '#{decision_making}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.curiosity <= '#{curiosity}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.adaptability <= '#{adaptability}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.enthusiam <= '#{enthusiam}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.flexibility <= '#{flexibility}' THEN 1 ELSE 0 END) +
  #          (CASE WHEN offers.empathy <= '#{empathy}' THEN 1 ELSE 0 END)
  #        )
  #        / 15
  #      , 2)
  #    )
  #  PLOP
  #end
  def matching_percentage_calc
    soft_skills_cases = SOFT_SKILLS.map do |soft_skill|
      <<~SQL
        (
          CASE
            WHEN offers.#{soft_skill}::int     <= '#{self[soft_skill]}' THEN 100
            WHEN offers.#{soft_skill}::int - 1 <= '#{self[soft_skill]}' THEN 75
            WHEN offers.#{soft_skill}::int - 2 <= '#{self[soft_skill]}' THEN 50
            WHEN offers.#{soft_skill}::int - 3 <= '#{self[soft_skill]}' THEN 25
            ELSE
              0
          END
        )
      SQL
    end
    soft_skills_query = soft_skills_cases.join(" +\n")
    <<~SQL
      ( (#{soft_skills_query}) / 15::decimal )
    SQL
  end
end
