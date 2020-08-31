class ChangeUsersSkillsColumnsToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :interpersonal_skills, "integer USING interpersonal_skills::integer"
    change_column :users, :rigor, "integer USING rigor::integer"
    change_column :users, :independence, "integer USING independence::integer"
    change_column :users, :communication, "integer USING communication::integer"
    change_column :users, :teamwork, "integer USING teamwork::integer"
    change_column :users, :creativity, "integer USING creativity::integer"
    change_column :users, :initiative, "integer USING initiative::integer"
    change_column :users, :stress_management, "integer USING stress_management::integer"
    change_column :users, :perseverance, "integer USING perseverance::integer"
    change_column :users, :decision_making, "integer USING decision_making::integer"
    change_column :users, :curiosity, "integer USING curiosity::integer"
    change_column :users, :adaptability, "integer USING adaptability::integer"
    change_column :users, :enthusiam, "integer USING enthusiam::integer"
    change_column :users, :flexibility, "integer USING flexibility::integer"
    change_column :users, :empathy, "integer USING empathy::integer"
  end
end
