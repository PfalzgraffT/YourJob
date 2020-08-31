class ChangeOffersSkillsColumnsToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :offers, :interpersonal_skills, "integer USING interpersonal_skills::integer"
    change_column :offers, :rigor, "integer USING rigor::integer"
    change_column :offers, :independence, "integer USING independence::integer"
    change_column :offers, :communication, "integer USING communication::integer"
    change_column :offers, :teamwork, "integer USING teamwork::integer"
    change_column :offers, :creativity, "integer USING creativity::integer"
    change_column :offers, :initiative, "integer USING initiative::integer"
    change_column :offers, :stress_management, "integer USING stress_management::integer"
    change_column :offers, :perseverance, "integer USING perseverance::integer"
    change_column :offers, :decision_making, "integer USING decision_making::integer"
    change_column :offers, :curiosity, "integer USING curiosity::integer"
    change_column :offers, :adaptability, "integer USING adaptability::integer"
    change_column :offers, :enthusiam, "integer USING enthusiam::integer"
    change_column :offers, :flexibility, "integer USING flexibility::integer"
    change_column :offers, :empathy, "integer USING empathy::integer"
  end
end
