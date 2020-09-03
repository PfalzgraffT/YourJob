puts "cleaning DB"
Apply.delete_all
User.delete_all
Offer.delete_all
Recruiter.delete_all

puts "Create recruiters..."
magalie = Recruiter.new(
    email: "magalie.magalie@example.com",
    password: "password",
    company: "IT Records",
)
magalie.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo_it_records.png')), filename: 'logo_it_records.png')
magalie.save!

tom = Recruiter.new(
    email: "tom.tom@example.com",
    password: "password",
    company: "Origin Dev",
)
tom.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo_origin_dev.png')), filename: 'logo_origin_dev.png')
tom.save!

judith = Recruiter.new(
    email: "judith.judith@example.com",
    password: "password",
    company: "DeView",
)
judith.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo_deview.png')), filename: 'logo_deview.png')
judith.save!

richard = Recruiter.new(
    email: "richard.richard@example.com",
    password: "password",
    company: "Design Enterprise",
)
richard.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo_design_enterprise.png')), filename: 'logo_design_enterprise.png')
richard.save!

marcel = Recruiter.new(
    email: "marcel.marcel@example.com",
    password: "password",
    company: "Best Recruit",
)
marcel.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo_best_recruit.jpg')), filename: 'logo_best_recruit.jpg')
marcel.save!

michel = Recruiter.new(
    email: "michel.michel@example.com",
    password: "password",
    company: "Salamanca IT solutions",
)
michel.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo_salamanca.png')), filename: 'logo_salamanca.png')
michel.save!

tony = Recruiter.new(
    email: "tony.tony@example.com",
    password: "password",
    company: "InterDev",
)
tony.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo_interdev.png')), filename: 'logo_interdev.png')
tony.save!

nathalie = Recruiter.new(
    email: "nathalie.nathalie@example.com",
    password: "password",
    company: "BackLand",
)
nathalie.logo.attach(io: File.open(Rails.root.join('db/fixtures/images/recruiters/logo_backland.png')), filename: 'logo_backland.png')
nathalie.save!

puts "Create offers..."
fullstack_dev = Offer.create!(
    title: "Fullstack Developer",
    activity: "Computer Science",
    location: "12 Rue Marceau, 44000 Nantes",
    contract: "Long-term",
    description: "Join our company, We’re hiring a Junior Developer who will join our Cards and Payments Team based in Nantes. You will work with our latest technologies driving the Future of Finance.",
    interpersonal_skills: 4,
    rigor: 4,
    independence: 3,
    communication: 3,
    teamwork: 5,
    creativity: 5,
    initiative: 2,
    stress_management: 5,
    perseverance: 3,
    decision_making: 5,
    curiosity: 3,
    adaptability: 3,
    enthusiam: 5,
    flexibility: 2,
    empathy: 1,
    latitude: 43.2961743,
    longitude: 5.3699525,
    recruiter_id: magalie.id,
)

caregiver = Offer.create!(
    title: "Caregiver",
    activity: "Health",
    location: "Paris",
    contract: "Long-term",
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
    recruiter_id: marcel.id,
)

front_dev = Offer.create!(
    title: "Fullstack Developer",
    activity: "Computer Science",
    location: "Rue de Strasbourg, 44000 Nantes",
    contract: "Long-term",
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
    recruiter_id: tom.id,
)

cleaning_operator = Offer.create!(
    title: "Cleaning operator",
    activity: "Health",
    location: "Lyon",
    contract: "Long-term",
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
    recruiter_id: marcel.id,
)

fullstack_dev2 = Offer.create!(
    title: "Front Developer",
    activity: "Computer Science",
    location: "4 Boulevard Gustave Roch, 44200 Nantes",
    contract: "Long-term",
    description: " Our team is very pleasant to live with.
    There is kindness and support from managers.
    To join this team, it is necessary to be united, sharing and in a collective dynamic.
    Lots of curiosity in HTML / CSS / JavaScript allows you to take this post with ease.
    Motivation and the desire to learn are skills that will be greatly appreciated.",
    interpersonal_skills: 4,
    rigor: 4,
    independence: 3,
    communication: 3,
    teamwork: 5,
    creativity: 3,
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
    recruiter_id: judith.id,
)

fullstack_dev3 = Offer.create!(
    title: "Fullstack Engineer",
    activity: "Computer Science",
    location: "34 Rue de Gigant, 44000 Nantes",
    contract: "Long-term",
    description: " What will you be doing?

    You will ensure that all activities and duties are carried out in full compliance with regulatory requirements, Enterprise Wide Risk Management Framework and internal Barclays Policies and Policy Standards.
    You will develop components from UI to back end using modern languages and techniques.",
    interpersonal_skills: 4,
    rigor: 4,
    independence: 3,
    communication: 3,
    teamwork: 5,
    creativity: 5,
    initiative: 2,
    stress_management: 5,
    perseverance: 3,
    decision_making: 5,
    curiosity: 3,
    adaptability: 3,
    enthusiam: 5,
    flexibility: 2,
    empathy: 5,
    latitude: 48.1119800,
    longitude: -1.6742900,
    recruiter_id: michel.id,
)

front_dev2 = Offer.create!(
    title: "Fullstack Developer",
    activity: "Computer Science",
    location: "18 Boulevard de Launay, 44100 Nantes",
    contract: "Long-term",
    description: "You will be working on new concepts and developing existing projects that range from small start-ups to large e-commerce sites.
    Your personal Skills:

    Excellent communication skills
    Organised
    Wants to improve their level of skills",
    interpersonal_skills: 3,
    rigor: 2,
    independence: 3,
    communication: 5,
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
    recruiter_id: tony.id,
)

front_dev3 = Offer.create!(
    title: "Designer",
    activity: "Computer Science",
    location: "12 Rue de la Bastille, 44000 Nantes",
    contract: "Long-term",
    description: "Working closely with the team you will be responsible for taking creative design concepts into working, developed and tested live sites.",
    interpersonal_skills: 5,
    rigor: 5,
    independence: 5,
    communication: 5,
    teamwork: 5,
    creativity: 5,
    initiative: 5,
    stress_management: 5,
    perseverance: 5,
    decision_making: 5,
    curiosity: 5,
    adaptability: 5,
    enthusiam: 5,
    flexibility: 5,
    empathy: 5,
    latitude: 47.218949,
    longitude: -1.564874,
    recruiter_id: richard.id,
)

back_dev = Offer.create!(
    title: "Back-end Developer",
    activity: "Computer Science",
    location: "10 Rue Alfred Riom, 44100 Nantes",
    contract: "Long-term",
    description: "The role covers building custom modules, back-end functionality, third-party system integrations through APIs and ongoing site bug fixing.Excellent organisation and planning skills.
    Requirements :
    High attention to detail and thorough checking.
    Excellent communication skills to help explain complex and technical aspects simply.
    Ability to learn from others and teach other team members.",
    interpersonal_skills: 5,
    rigor: 4,
    independence: 3,
    communication: 5,
    teamwork: 5,
    creativity: 1,
    initiative: 2,
    stress_management: 2,
    perseverance: 4,
    decision_making: 3,
    curiosity: 5,
    adaptability: 3,
    enthusiam: 3,
    flexibility: 2,
    empathy: 2,
    latitude: 48.5839200,
    longitude: 7.7455300,
    recruiter_id: nathalie.id,
)

puts "Create users..."
john = User.new(
    first_name: "John",
    last_name: "Cena",
    address: "11 Rue la Noue Bras de Fer, 44200 Nantes",
    phone_number: "0123456789",
    email: "john.bigmuscles@example.com",
    password: "password",
    location: "Paris",
    activity: "Health",
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
    address: "1 Place du Capitole, 31040 Toulouse",
    phone_number: "1234567890",
    email: "sophie.labo@example.com",
    password: "password",
    location: "Nantes",
    activity: "Computer Science",
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

anthony = User.new(
    first_name: "Anthony",
    last_name: "Mania",
    address: "11 Rue la Noue Bras de Fer, 44200 Nantes",
    phone_number: "06.00.00.00.00",
    email: "anthony.mania@example.com",
    password: "password",
    location: "Nantes",
    activity: "Computer Science",
    contract: "Long-term",
    interpersonal_skills: 3,
    rigor: 2,
    independence: 5,
    teamwork: 3,
    initiative: 3,
    stress_management: 3,
    perseverance: 5,
    decision_making: 3,
    curiosity: 4,
    enthusiam: 3,
    flexibility: 2,
    empathy: 4,
)
anthony.profile_pic.attach(io: File.open(Rails.root.join('db/fixtures/images/users/anthony_profile_pic.png')), filename: 'anthony_profile_pic.png')
anthony.save!

puts "Create applications..."
#application_dev_sophie = Apply.create!(
 #   user: sophie,
 #   offer: fullstack_dev,
 #   status: "Pending",
#)

#application_front_sophie = Apply.create!(
#    user: sophie,
#    offer: front_dev,
#    status: "Pending",
#)

#application_home_sophie = Apply.create!(
#    user: sophie,
#    offer: cleaning_operator,
#    status: "Pending",
#)

application_care_john = Apply.create!(
    user: john,
    offer: caregiver,
    status: "Pending",
)

application_home_john = Apply.create!(
    user: john,
    offer: cleaning_operator,
    status: "Pending",
)
puts "Done!"
