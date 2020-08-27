def matching_percentage_calc
    <<~PLOP
      (
        (
          (CASE WHEN offers.interpersonal_skills::int - 3 <= '#{interpersonal_skills}' THEN 100 - (offers.interpersonal_skills::int - '#{interpersonal_skills}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.rigor::int - 3 <= '#{rigor}' THEN 100 - (offers.rigor::int - '#{rigor}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.independence::int - 3 <= '#{independence}' THEN 100 - (offers.independence::int - '#{independence}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.communication::int - 3 <= '#{communication}' THEN 100 - (offers.communication::int - '#{communication}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.teamwork::int - 3 <= '#{teamwork}' THEN 100 - (offers.teamwork::int - '#{teamwork}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.creativity::int - 3 <= '#{creativity}' THEN 100 - (offers.creativity::int - '#{creativity}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.initiative::int - 3 <= '#{initiative}' THEN 100 - (offers.initiative::int - '#{initiative}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.stress_management::int - 3 <= '#{stress_management}' THEN 100 - (offers.stress_management::int - '#{stress_management}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.perseverance::int - 3 <= '#{perseverance}' THEN 100 - (offers.perseverance::int - '#{perseverance}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.decision_making::int - 3 <= '#{decision_making}' THEN 100 - (offers.decision_making::int - '#{decision_making}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.curiosity::int - 3 <= '#{curiosity}' THEN 100 - (offers.curiosity::int - '#{curiosity}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.adaptability::int - 3 <= '#{adaptability}' THEN 100 - (offers.adaptability::int - '#{adaptability}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.enthusiam::int - 3 <= '#{enthusiam}' THEN 100 - (offers.enthusiam::int - '#{enthusiam}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.flexibility::int - 3 <= '#{flexibility}' THEN 100 - (offers.flexibility::int - '#{flexibility}'::int) * 25  ELSE 0 END) +
          (CASE WHEN offers.empathy::int - 3 <= '#{empathy}' THEN 100 - (offers.empathy::int - '#{empathy}'::int) * 25  ELSE 0 END)
        )
        / 15
      )
    PLOP
  end
