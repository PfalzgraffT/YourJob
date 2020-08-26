class ChangeOffersColumnsToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :offers, :interpersonal_skills, :string
    change_column :offers, :rigor, :string
    change_column :offers, :independence, :string
    change_column :offers, :communication, :string
    change_column :offers, :teamwork, :string
    change_column :offers, :creativity, :string
    change_column :offers, :initiative, :string
    change_column :offers, :stress_management, :string
    change_column :offers, :perseverance, :string
    change_column :offers, :decision_making, :string
    change_column :offers, :curiosity, :string
    change_column :offers, :adaptability, :string
    change_column :offers, :enthusiam, :string
    change_column :offers, :flexibility, :string
    change_column :offers, :empathy, :string
  end
end
