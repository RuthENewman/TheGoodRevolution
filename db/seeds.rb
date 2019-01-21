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

mencap = Charity.create([{name: "Mencap"}, {category: "Disability"}, {bio: "Mencap’s mission is to transform society’s attitudes to learning disability and improve the quality of life of people with a learning disability and their families. These are the areas Mencap wants to have the biggest impact on, and the areas where there is the most need to see change for the better. They are: reducing stigma and discrimination; early intervention; making a difference, here and now; supporting friendships and relationships; improving health; and employment."}, {img_url: "https://ablemagazine.co.uk/wp-content/uploads/2018/08/mencap-900x450.jpg"}])

gig_buddies = SocialAction.create([{title: "Gig Buddies"}, {charity: mencap}, {summary: "Gig Buddies is a project that matches people with a learning disability with a volunteer who shares similar interests to engage in nightlife activities together. The aim of the project is to support people with a learning disability to develop new social circles and provide informal support networks to go out and do the things they enjoy.“}, {img_url: “https://www.mencap.org.uk/sites/default/files/styles/full_width_teaser/public/2018-10/Buds.jpg?itok=6O1Zv84P"}])

abseil = Event.create([{name: "Mass abseiling afternoon off the WeWork Finsbury Pavement building"}, {social_action: gig_buddies}, {when: Time.new(2019, 01, 22, 14, 00)}, {location: "We Work Finsbury Pavement"}])



puts "-------------------------------SEEDED-----------------------------"
