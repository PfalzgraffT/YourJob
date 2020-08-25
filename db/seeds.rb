puts "Create recruiters..."
magalie = Recruiter.new(
    email: "magalie.laurent@example.com",
    password: "password",
    company: "best recruit",
)
magalie.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo.jpg')), filename: 'logo.jpg')
magalie.save!

marcel = Recruiter.new(
    email: "jean.marcel@example.com",
    password: "password",
    company: "best recruit",
)
marcel.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo.jpg')), filename: 'logo.jpg')
marcel.save!

puts "Create offers..."
fullstack_dev = Offer.create!(
    title: "Fullstack dev",
    activity: "computer science",
    location: "Marseille",
    contract: "long-term",
    interpersonal_skills: 4,
    rigor: 4,
    independence: 3,
    communication: 3,
    teamwork: 5,
    creativity: 1,
    initiative: 2,
    stress_management: 5,
    perseverance: 3,
    decision_making: 1,
    curiosity: 3,
    adaptability: 3,
    enthusiam: 5,
    flexibility: 2,
    empathy: 1,
    recruiter: magalie,
)

caregiver = Offer.create!(
    title: "Caregiver",
    activity: "Health",
    location: "Paris",
    contract: "short-term",
    interpersonal_skills: 5,
    rigor: 4,
    independence: 3,
    communication: 3,
    teamwork: 1,
    creativity: 1,
    initiative: 3,
    stress_management: 4,
    perseverance: 5,
    decision_making: 2,
    curiosity: 1,
    adaptability: 3,
    enthusiam: 5,
    flexibility: 2,
    empathy: 5,
    recruiter: marcel,
)

front_dev = Offer.create!(
    title: "Frontend dev",
    activity: "computer science",
    location: "ouagadougou",
    contract: "internship",
    interpersonal_skills: 3,
    rigor: 2,
    independence: 3,
    communication: 2,
    teamwork: 5,
    creativity: 4,
    initiative: 3,
    stress_management: 4,
    perseverance: 5,
    decision_making: 2,
    curiosity: 3,
    adaptability: 3,
    enthusiam: 5,
    flexibility: 3,
    empathy: 1,
    recruiter: magalie,
)

cleaning_operator = Offer.create!(
    title: "Cleaning operator",
    activity: "Homecare",
    location: "Paris",
    contract: "long-term",
    interpersonal_skills: 1,
    rigor: 5,
    independence: 4,
    communication: 1,
    teamwork: 1,
    creativity: 1,
    initiative: 1,
    stress_management: 2,
    perseverance: 5,
    decision_making: 1,
    curiosity: 1,
    adaptability: 4,
    enthusiam: 3,
    flexibility: 3,
    empathy: 2,
    recruiter: marcel,
)

fullstack_dev2 = Offer.create!(
    title: "Fullstack developpeur",
    activity: "computer science",
    location: "Paris",
    contract: "long-term",
    interpersonal_skills: 4,
    rigor: 4,
    independence: 3,
    communication: 3,
    teamwork: 5,
    creativity: 1,
    initiative: 2,
    stress_management: 5,
    perseverance: 3,
    decision_making: 1,
    curiosity: 3,
    adaptability: 3,
    enthusiam: 5,
    flexibility: 2,
    empathy: 1,
    recruiter: magalie,
)

fullstack_dev3 = Offer.create!(
    title: "Fullstack engineer",
    activity: "computer science",
    location: "Paris",
    contract: "long-term",
    interpersonal_skills: 4,
    rigor: 4,
    independence: 3,
    communication: 3,
    teamwork: 5,
    creativity: 1,
    initiative: 2,
    stress_management: 5,
    perseverance: 3,
    decision_making: 1,
    curiosity: 3,
    adaptability: 3,
    enthusiam: 5,
    flexibility: 2,
    empathy: 1,
    recruiter: marcel,
)

front_dev2 = Offer.create!(
    title: "Frontend developpeur",
    activity: "computer science",
    location: "Nantes",
    contract: "short-term",
    interpersonal_skills: 3,
    rigor: 2,
    independence: 3,
    communication: 2,
    teamwork: 5,
    creativity: 4,
    initiative: 3,
    stress_management: 4,
    perseverance: 5,
    decision_making: 2,
    curiosity: 3,
    adaptability: 3,
    enthusiam: 5,
    flexibility: 3,
    empathy: 1,
    recruiter: magalie,
)

front_dev3 = Offer.create!(
    title: "Frontend designer",
    activity: "computer science",
    location: "Paris",
    contract: "internship",
    interpersonal_skills: 3,
    rigor: 2,
    independence: 3,
    communication: 2,
    teamwork: 5,
    creativity: 4,
    initiative: 3,
    stress_management: 4,
    perseverance: 5,
    decision_making: 2,
    curiosity: 3,
    adaptability: 3,
    enthusiam: 5,
    flexibility: 3,
    empathy: 1,
    recruiter: marcel,
)

back_dev = Offer.create!(
    title: "Back-end dev",
    activity: "computer science",
    location: "Nantes",
    contract: "long-term",
    interpersonal_skills: 5,
    rigor: 4,
    independence: 3,
    communication: 3,
    teamwork: 5,
    creativity: 1,
    initiative: 2,
    stress_management: 2,
    perseverance: 4,
    decision_making: 3,
    curiosity: 5,
    adaptability: 3,
    enthusiam: 2,
    flexibility: 2,
    empathy: 2,
    recruiter: marcel,
)

puts "Create users..."
john = User.new(
    first_name: "John",
    last_name: "Cena",
    address: "105 Boston Street, West Newbury",
    phone_number: "+33 723547793",
    email: "john.bigmuscles@example.com",
    password: "password",
    location: "Paris",
    activity: "health",
    contract: "Long-term",
    interpersonal_skills: 3,
    rigor: 5,
    independence: 2,
    communication: 2,
    teamwork: 3,
    creativity: 1,
    initiative: 2,
    stress_management: 4,
    perseverance: 5,
    decision_making: 4,
    curiosity: 2,
    adaptability: 2,
    enthusiam: 5,
    flexibility: 1,
    empathy: 5,
)
john.profile_pic.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/john_profile_pic.png')), filename: 'john_profile_pic.png')
john.save!

sophie = User.new(
    first_name: "Sophie",
    last_name: "Labo",
    address: "Impasse du Néant",
    phone_number: "+33 639811201",
    email: "sophie.labo@example.com",
    password: "password",
    location: "Nantes",
    activity: "computer science",
    contract: "Long-term",
    interpersonal_skills: 3,
    rigor: 3,
    independence: 3,
    communication: 2,
    teamwork: 4,
    creativity: 5,
    initiative: 3,
    stress_management: 3,
    perseverance: 5,
    decision_making: 2,
    curiosity: 5,
    adaptability: 2,
    enthusiam: 3,
    flexibility: 2,
    empathy: 3,
)
sophie.profile_pic.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/sophie_profile_pic.png')), filename: 'sophie_profile_pic.png')
sophie.save!

puts "Create applications..."
application_dev_sophie = Apply.create!(
    user: sophie,
    offer: fullstack_dev,
    status: "pending",
)

application_front_sophie = Apply.create!(
    user: sophie,
    offer: front_dev,
    status: "pending",
)

application_home_sophie = Apply.create!(
    user: sophie,
    offer: cleaning_operator,
    status: "pending",
)

application_care_john = Apply.create!(
    user: john,
    offer: caregiver,
    status: "pending",
)

application_home_john = Apply.create!(
    user: john,
    offer: cleaning_operator,
    status: "pending",
)
puts "Done!"
