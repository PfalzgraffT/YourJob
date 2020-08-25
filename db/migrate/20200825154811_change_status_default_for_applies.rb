class ChangeStatusDefaultForApplies < ActiveRecord::Migration[6.0]
  def change
    change_column_default :applies, :status, from: nil, to: "pending"
  end
end
