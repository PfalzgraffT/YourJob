puts "cleaning DB"
Apply.delete_all
User.delete_all
Offer.delete_all
Recruiter.delete_all

puts "Create recruiters..."
magalie = Recruiter.new(
    email: "magalie.laurent@example.com",
    password: "password",
    company: "IT Records",
)
magalie.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo_it_records.png')), filename: 'logo_it_records.png')
magalie.save!

marcel = Recruiter.new(
    email: "jean.marcel@example.com",
    password: "password",
    company: "best recruit",
)
marcel.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo_best_recruit.jpg')), filename: 'logo_best_recruit.jpg')
marcel.save!

michel = Recruiter.new(
    email: "michel.a@example.com",
    password: "password",
    company: "Salamanca IT solutions",
)
michel.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo_salamanca.png')), filename: 'logo_salamanca.png')
michel.save!

puts "Create offers..."
fullstack_dev = Offer.create!(
    title: "Fullstack dev",
    activity: "computer science",
    location: "Marseille",
    contract: "long-term",
    description: "Join our company, We’re hiring a Junior Developer who will join our Cards and Payments Team based in Marseille. You will work with our latest technologies driving the Future of Finance.",
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
    latitude: 43.2961743,
    longitude: 5.3699525,
    recruiter: magalie,
)

caregiver = Offer.create!(
    title: "Caregiver",
    activity: "Health",
    location: "Paris",
    contract: "short-term",
    description: "If you have a passion for caring and the motivation to help us achieve our ambitions, we would love to hear from you. We provide full training",
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
    latitude: 48.8534100,
    longitude: 2.3488000,
    recruiter: marcel,
)

front_dev = Offer.create!(
    title: "Frontend dev",
    activity: "computer science",
    location: "rue de strasbourg, 44000 Nantes",
    contract: "internship",
    description: "Your main responsibilities:

    Building detailed custom designed websites
    Working with designers, developers and our digital team over the lifetime of new and existing projects
    Communicating with clients where needed",
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
    latitude: 47.218133,
    longitude: -1.553029,
    recruiter: magalie,
)

cleaning_operator = Offer.create!(
    title: "Cleaning operator",
    activity: "Homecare",
    location: "Lyon",
    contract: "long-term",
    description: "Tasks will include general cleaning duties, including dusting, hoovering, emptying bins, cleaning toilets and kitchens.
    We will provide full training and a uniform",
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
    latitude: 45.7484600,
    longitude: 4.8467100,
    recruiter: marcel,
)

fullstack_dev2 = Offer.create!(
    title: "Fullstack developpeur",
    activity: "computer science",
    location: "4 boulevard gustave roch, 44200 Nantes",
    contract: "long-term",
    description: " What we’re looking for:

    Good hands on Java experience
    Experience working with RESTful
    Some experience with JavaScript
    Exposure to Cloud Tools",
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
    latitude: 47.205306,
    longitude: -1.54788,
    recruiter: magalie,
)

fullstack_dev3 = Offer.create!(
    title: "Fullstack engineer",
    activity: "computer science",
    location: "Rennes",
    contract: "long-term",
    description: " What will you be doing?

    You will ensure that all activities and duties are carried out in full compliance with regulatory requirements, Enterprise Wide Risk Management Framework and internal Barclays Policies and Policy Standards.
    You will develop components from UI to back end using modern languages and techniques.",
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
    latitude: 48.1119800,
    longitude: -1.6742900,
    recruiter: michel,
)

front_dev2 = Offer.create!(
    title: "Frontend developpeur",
    activity: "computer science",
    location: "18 boulevard de launay, 44100 Nantes",
    contract: "short-term",
    description: "You will be working on new concepts and developing existing projects that range from small start-ups to large e-commerce sites.
    Your personal Skills:

    Excellent communication skills
    Organised
    Wants to improve their level of skills",
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
    latitude: 47.21067,
    longitude: -1.572942,
    recruiter: michel,
)

front_dev3 = Offer.create!(
    title: "Frontend designer",
    activity: "computer science",
    location: "12 rue de la bastille, 44000 Nantes",
    contract: "internship",
    description: "Working closely with the team you will be responsible for taking creative design concepts into working, developed and tested live sites.",
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
    latitude: 47.218949,
    longitude: -1.564874,
    recruiter: marcel,
)

back_dev = Offer.create!(
    title: "Back-end dev",
    activity: "computer science",
    location: "Strasbourg",
    contract: "long-term",
    description: "The role covers building custom modules, back-end functionality, third-party system integrations through APIs and ongoing site bug fixing.Excellent organisation and planning skills.
    Requirements :
    High attention to detail and thorough checking.
    Excellent communication skills to help explain complex and technical aspects simply.
    Ability to learn from others and teach other team members.",
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
    latitude: 48.5839200,
    longitude: 7.7455300,
    recruiter: michel,
)

puts "Create users..."
john = User.new(
    first_name: "John",
    last_name: "Cena",
    address: "11 rue la noue bras de fer, 44200 Nantes",
    phone_number: "0123456789",
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
john.profile_pic.attach(io: File.open(Rails.root.join('db/fixtures/images/users/john_profile_pic.png')), filename: 'john_profile_pic.png')
john.save!

sophie = User.new(
    first_name: "Sophie",
    last_name: "Labo",
    address: "1 place du capitole, 31040 Toulouse",
    phone_number: "1234567890",
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
sophie.profile_pic.attach(io: File.open(Rails.root.join('db/fixtures/images/users/sophie_profile_pic.png')), filename: 'sophie_profile_pic.png')
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
