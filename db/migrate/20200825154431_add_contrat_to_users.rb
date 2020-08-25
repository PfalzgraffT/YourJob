class AddContratToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :contract, :string
  end
end
