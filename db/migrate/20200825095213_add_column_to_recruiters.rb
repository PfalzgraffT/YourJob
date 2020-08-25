class AddColumnToRecruiters < ActiveRecord::Migration[6.0]
  def change
    add_column :recruiters, :company, :string
  end
end
