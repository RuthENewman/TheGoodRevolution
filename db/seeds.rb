# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Charity.destroy_all
SocialAction.destroy_all
Event.destroy_all

mencap = Charity.create(name: "Mencap", category: "Disability", bio: "Mencap’s mission is to transform society’s attitudes to learning disability and improve the quality of life of people with a learning disability and their families. These are the areas Mencap wants to have the biggest impact on, and the areas where there is the most need to see change for the better. They are: reducing stigma and discrimination; early intervention; making a difference, here and now; supporting friendships and relationships; improving health; and employment.", img_url: "https://ablemagazine.co.uk/wp-content/uploads/2018/08/mencap-900x450.jpg")

book_trust = Charity.create(name: "Book Trust", category: "Children", bio: "BookTrust is the UK’s largest children’s reading charity, dedicated to getting children reading. BookTrust wants all families to have access to reading, delivering more targeted programmes aimed at helping those who need it most – whether that’s families facing economic hardship, children in care or children with additional needs.", img_url: "https://www.themohnwestlakefoundation.co.uk/wp-content/uploads/2018/05/BookTrustLogo-e1525384476947.jpg")

gig_buddies = SocialAction.create(title: "Gig Buddies", charity: mencap, summary: "Gig Buddies is a project that matches people with a learning disability with a volunteer who shares similar interests to engage in nightlife activities together. The aim of the project is to support people with a learning disability to develop new social circles and provide informal support networks to go out and do the things they enjoy.", img_url: "https://www.mencap.org.uk/sites/default/files/styles/full_width_teaser/public/2018-10/Buds.jpg?itok=6O1Zv84P")

abseil = Event.create(name: "Mass abseiling afternoon off the WeWork Finsbury Pavement building", social_action: gig_buddies, when: Time.new(2019, 01, 31, 14, 00), location: "We Work Finsbury Pavement")

bookstart = SocialAction.create(title: "Book Start", charity: book_trust, summary: "Bookstart gives free books to every child in England and Wales at two key stages before school, as well as free packs for children with additional needs, tips and guidance on reading together, resources and activities, and much more. As the world's first national book-gifting programme, Bookstart aims to encourage a love of books, stories and rhymes in children from as young an age as possible.", img_url: "https://www.booktrust.org.uk/globalassets/images/programmes/bookstart/bookstart-logo-web-square.jpg?w=259&h=259&quality=70&anchor=middlecenter")

inclusive_gyms = SocialAction.create(title: "Inclusive gyms and sports clubs scheme", charity: mencap, summary: "Support clubs are run by partner groups in local areas for people with learning disabilities, as well supporting gyms to become more welcoming and accessible for people with a disability.", img_url: "https://www.mencap.org.uk/sites/default/files/styles/hero/public/2016-12/Do%20you%20have%20a%20learning%20disability%201600x900.png?itok=F-yiv4Z-")

work_placements = SocialAction.create(title: "The Right Place - work placement scheme", charity: mencap, summary: "Securing work placements for young people with learning disabilities, and provide job coaching for students and support for employers to make the placements successful", img_url: "https://www.mencap.org.uk/sites/default/files/styles/hero/public/2017-05/Vijay%20Vanquis%205%201600x800_1.png?itok=Nmp7A8op")

book_buzz = SocialAction.create(title: "Bookbuzz Reading clubs for 11 to 13-year olds", charity: book_trust, summary: "Bookbuzz is a reading programme for ages 11-13 that helps you support the set up and running of book clubs that encourage reading for pleasure among this critical age group when educational attainment gaps commonly begin base on socio-economic advantages and disadvantages.", img_url: "https://www.booktrust.org.uk/globalassets/images/programmes/bookbuzz/bookbuzz-2017-class-group.jpg?w=1200&h=675&quality=70&anchor=middlecenter")

letterbox_club = SocialAction.create(title: "Letterbox clubs for children in care", charity: book_trust, summary: "Inspiring a love of reading and engagement with numeracy in children who are looked-after. Across the UK, children are enrolled for the Letterbox Club by local authorities and schools. Each child receives their own colourful parcel of books, maths games, stationery and other high quality materials once every month for six months, from May to October. For many children, it's the first time they have had a letter or a parcel through the post and for some it's the first time they have had books of their own.", img_url: "https://www.booktrust.org.uk/globalassets/images/programmes/letterbox-club/carer-reading-with-girl.jpg?w=1200&h=675&quality=70&anchor=middlecenter")

trussell_trust = Charity.create(name: "The Trussell Trust", category: "Food Poverty", bio: "The Trussell Trust brings communities together to end hunger and poverty in the UK by providing compassionate, practical help with dignity whilst challenging injustice. The Trust supports a nationwide network of food banks and together provides emergency food and support to people locked in poverty, and campaigns for change to end the need for food banks in the UK.", img_url: "https://www.trusselltrust.org/wp-content/uploads/sites/2/2016/02/blog-fuel-poverty-day-e1456507947644.jpg")

red_cross = Charity.create(name: "British Red Cross Society", category: "Humanitarian", bio: "A British charity and member of the International Federation of Red Cross and Red Crescent Societies. The British Red Cross is a humanitarian agency that responds to crises in the UK, as well as internationally in partnership with other members of the worldwide Red Cross Red Crescent Movement.", img_url: "https://cached.imagescaler.hbpl.co.uk/resize/scaleWidth/614/cached.offlinehbpl.hbpl.co.uk/news/ORP/777FB59F-C5D1-C4B4-D2B5C82DBAB3DF89.jpg")

rspca = Charity.create(name: "RSPCA", bio: "A unique animal welfare charity, the oldest in existence. Through investigations and prosecutions the RSPCA stands up to those who deliberately harm animals to send out a clear message - animal abuse will not be tolerated. RSPCA-trained officers tackle neglect and cruelty, working to stamp out large-scale serious, organised and commercial animal cruelty. The RSPCA rescues animals in need, rehabilitates them wherever possible, provides them with veterinary care and finds them new homes through rehoming or release.", img_url: "http://wildlifearticles.co.uk/wp-content/uploads/2015/11/RSPCA-3.jpg")

eat_well = SocialAction.create(title: "Eat Well Spend Less cooking course", charity: trussell_trust, summary: "Eat Well Spend Less is a free six-session course teaching people cookery skills and household budgeting tips to help make tight budgets stretch further. Typically, this looks at the basics of cookery, budgeting, hygiene and nutrition.", img_url: "https://www.trusselltrust.org/wp-content/uploads/sites/2/2015/10/EWSL.jpg")

holiday_clubs = SocialAction.create(title: "Holiday clubs for children in poverty", charity: trussell_trust, summary: "offer a safe haven that provides meals (breakfast & lunch), as well as a variety of fun activities and learning opportunities to families. These include dance, arts and crafts, football and circus workshops. A Holiday Club gives children and families the chance to have fun with each other, make new friends and develop socially, while recognising that they are not the only family finding it difficult during the holidays. These clubs not only help to alleviate hunger, but also help to reduce feelings of isolation, raise children’s aspirations and reduce the stress felt by working parents on limited budgets.", img_url: "https://www.trusselltrust.org/wp-content/uploads/sites/2/2017/07/Holiday-Club_Lisburn_Northern-Ireland-_31_WEB.jpg")

local_food_bank = SocialAction.create(title: "Islington food bank", charity: trussell_trust, summary: "Islington Foodbank was established by a group of volunteers in 2011 as part of The Trussell Trust network of foodbanks. The centre operates from Highbury Roundhouse on Ronalds Road and is open twice a week on Mondays and Saturdays from 1pm – 4pm. The foodbank aims to provide people who find themselves in a crisis with 3 days’ worth of emergency food. The focus is on collecting donations to meet the demand in Islington.", img_url: "https://islington.foodbank.org.uk/wp-content/uploads/sites/54/2015/11/food-sorting-2103-382x218.png")

childrens_society = Charity.create(name: "The Children's Society", category: "Children", bio: "A national charity supporting the UK's most vulnerable children and young people.", img_url: "https://www.childrenssociety.org.uk/sites/default/files/primary-logo_280x209_v1.png")

disrupting_exploitation = SocialAction.create(title: "Disrupting the Exploitation of Children", charity: childrens_society, summary: "A service for children and young people who are at risk of exploitation, with a focus on child criminal exploitation. one-to-one case work, group work, contextual safeguarding interventions and systems change work to tackle and disrupt exploitation, as well as therapeutic support for child victims of exploitation. This could mean working with an at risk peer-group of young people, joining the police on raids to ensure vulnerable children are treated as victims or working with local schools to review their safeguarding procedures around child criminal exploitation.", img_url: "https://www.childrenssociety.org.uk/sites/default/files/teenage-boy-by-red-doors-600x300.jpg")

footsteps = SocialAction.create(title: "Footsteps service for children who go missing from home or care", charity: childrens_society, summary: "A service for vulnerable young people who go missing from home or care in Greater Manchester. The service includes personalised one-to-one support to address the issues that are causing the young person to go missing; engaging them in group work to help them understand risks and how to avoid them; providing emotional wellbeing support; involving the family where appropriate; building resilience, self-esteem and healthier social and family relationships; providing access to positive activities; peer mentoring and support.", img_url: "https://www.childrenssociety.org.uk/sites/default/files/DownloadableResources/footsteps-main.jpg")

hearts_refugees = SocialAction.create(title: "Help Each Asylum seeker and Refugee to Settle in Leeds", charity: childrens_society, summary: "This service in Leeds supports young refugees and asylum seekers who face significant harm, inequality and neglect. It matches a young refugee with a volunteer mentor, who offers practical help with conversational English, homework, orientation around the city, befriending and building a support network. An orientation programme educates the young refugee on life in the UK and useful life skills, and enables them to participate in social and creative activities and undertake volunteering and work placements of their own, contributing back to the local community themselves.", img_url: "https://www.childrenssociety.org.uk/sites/default/files/refugee-3_600x300px.jpg")

finsbury_park_animal_fostering = SocialAction.create(title: "Emergency animal fostering unit in Finsbury Park", charity: rspca, summary: "An emergency fostering unit, located in Finsbury Park, which acts as a life-saving facility for thousands of animals each year. The unit has 32 cat pods, as well as temporary boarding facilities for rabbits, guinea pigs, rats and hamsters and other small animals.", img_url: "https://www.rspca.org.uk/webContent/staticImages/SectionImages/RSPCAPetInsurance.jpg")

cheshire_wildlife_centre = SocialAction.create(title: "Stapeley Grange Wildlife Centre", charity: rspca, summary: "Stapeley Grange is one of four RSPCA wildlife centres based in England that supports the rehabilitation of sick, injured, orphaned and confiscated wildlife. The centre admits animals from south of the Scottish Border to south of Birmingham, into North Wales and across to Lincolnshire. During the year the centre typically takes care of between 6,000 to 7,000 animals, including wildlife, exotic and domestic casualties.", img_url: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/10/15/13/RSPCA-owl-1_0.jpg?w660")

finsbury_park_animal_hospital = SocialAction.create(title: "RSPCA Harmsworth Memorial Animal Hospital", charity: rspca, summary: "The RSPCA Harmsworth Animal Hospital is a busy veterinary hospital located in Finsbury Park in London. Over the last 50 years it has provided veterinary services for hundreds of thousands of animals in need. Many of the animals cared for have been rescued by RSPCA Inspectors and Animal Collection Officers from situations where they are suffering from cruelty and neglect, or when they are seriously injured and have no owner to care for them. The RSPCA team ensure that these poorly animals are provided with the care they need; from repairing broken bones and treating wounds to running blood tests and performing life saving surgeries. In the case of stray and unowned animals once they are in good health they will be neutered, vaccinated and microchipped and then rehomed through a network of animal centres.", img_url: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/18341872_760610960784114_8811993237675344984_n.jpg?_nc_cat=104&_nc_ht=scontent-lhr3-1.xx&oh=7e145e05aa306fdc05d01e70d335994d&oe=5CC987AA")

camden_bake_sale = Event.create(name: "Camden bake sale", social_action: bookstart, when: Time.new(2019, 2, 14, 11, 30), location: "Camden Town, London")

danceathon_ldn = Event.create(name: "Public danceathon in London", social_action: book_buzz, when: Time.new(2019, 3, 7, 16, 00), location: "Meet at Trafalgar Square, London")

danceathon_mcr = Event.create(name: "Public danceathon in Manchester", social_action: footsteps, when: Time.new(2019, 3, 9, 16, 00), location: "Meet at Piccadilly Gardens, Manchester")

danceathon_leeds = Event.create(name: "Public danceathon", social_action: hearts_refugees, when: Time.new(2019, 3, 8, 16, 00), location: "Meet in Millenium Square, Leeds")

ten_k_london = Event.create(name: "London 10k", social_action: local_food_bank, when: Time.new(2019, 4, 15, 11, 00), location: "Start in Greenwich Park, London")

great_north_run = Event.create(name: "Great North Run", social_action: work_placements, when: Time.new(2019, 9, 8, 10, 40), location: "Start in Newcastle city centre, route ends on the coast in South Shields")

manchester_ten_k = Event.create(name: "Manchester 10k", social_action: hearts_refugees, when: Time.new(2019, 7, 21, 11, 00), location: "Start at Salford Quays")

ride_london = Event.create(name: "Prudential RideLondon 100", social_action: inclusive_gyms, when: Time.new(2019, 8, 4, 5, 45), location: "Start at the Queen Elizabeth Olympic park")

nightrider_london = Event.create(name: "Nightrider London", social_action: eat_well, when: Time.new(2019, 6, 8, 10, 30), location: "Start and finish at Lee Valley VeloPark")

manchester_bike_ride = Event.create(name: "Manchester to Blackpool Bike Ride", social_action: footsteps, when: Time.new(2019, 7, 7, 6, 30), location: "Start at The Piazza, MediaCityUK, Salford, Greater Manchester, M50 2EQ, UK")

manchester_to_the_pier_bike_ride = Event.create(name: "Pedal to the Pier", social_action: work_placements, when: Time.new(2019, 9, 14, 7, 30), location: "Start in Salford, Greater Manchester, M7 3NQ, UK")

nightrider_liverpool = Event.create(name: "Nightrider Liverpool", social_action: letterbox_club, when: Time.new(2019, 7, 13, 10, 30), location: "Pier Head, Georges Parade, Liverpool, Merseyside, L3 1DP, UK")

velo_birmingham = Event.create(name: "Velo Birmingham and Midlands", social_action: disrupting_exploitation, when: Time.new(2019, 5, 12, 9, 00), location: "Starts in Birmingham city centre - Broad Street, Birmingham, West Midlands, B15 1AY, UK")

london_to_brighton = Event.create(name: "London to Brighton Cycle Ride", social_action: holiday_clubs, when: Time.new(2019, 9, 15, 6, 30), location: "Starts at Clapham Common, Windmill Dr, London , Greater London, SW4 9DE, UK")

puts "-------------------------------SEEDED-----------------------------"
