class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
    add_column :users, :location, :string
    add_column :users, :activity, :string
    add_column :users, :interpersonal_skills, :string
    add_column :users, :rigor, :string
    add_column :users, :independence, :string
    add_column :users, :communication, :string
    add_column :users, :teamwork, :string
    add_column :users, :creativity, :string
    add_column :users, :initiative, :string
    add_column :users, :stress_management, :string
    add_column :users, :perseverance, :string
    add_column :users, :decision_making, :string
    add_column :users, :curiosity, :string
    add_column :users, :adaptability, :string
    add_column :users, :enthusiam, :string
    add_column :users, :flexibility, :string
    add_column :users, :empathy, :string
  end
end
