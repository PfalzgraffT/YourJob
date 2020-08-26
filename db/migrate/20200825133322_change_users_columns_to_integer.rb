class ChangeUsersColumnsToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :interpersonal_skills, :string
    change_column :users, :rigor, :string
    change_column :users, :independence, :string
    change_column :users, :communication, :string
    change_column :users, :teamwork, :string
    change_column :users, :creativity, :string
    change_column :users, :initiative, :string
    change_column :users, :stress_management, :string
    change_column :users, :perseverance, :string
    change_column :users, :decision_making, :string
    change_column :users, :curiosity, :string
    change_column :users, :adaptability, :string
    change_column :users, :enthusiam, :string
    change_column :users, :flexibility, :string
    change_column :users, :empathy, :string
  end
end
