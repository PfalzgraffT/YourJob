class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :activity
      t.string :location
      t.string :contract
      t.string :interpersonal_skills
      t.string :rigor
      t.string :independence
      t.string :communication
      t.string :teamwork
      t.string :creativity
      t.string :initiative
      t.string :stress_management
      t.string :perseverance
      t.string :decision_making
      t.string :curiosity
      t.string :adaptability
      t.string :enthusiam
      t.string :flexibility
      t.string :empathy
      t.date :starts_on
      t.text :description
      t.references :recruiter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
