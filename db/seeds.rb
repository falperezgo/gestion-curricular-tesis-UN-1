# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 #Student.create( firstname: "Sebastian", lastname: "Morales", email: "semoralesga@unal.edu.co", phone: "3224629224", identification: 1026287508 )
 #Student.create( firstname: "Andres", lastname: "Rodriguez", email: "anrodriguezf@unal.edu.co", phone: "3104629223", identification: 1030287507 )
 #Student.create( firstname: "Julian", lastname: "Perez", email: "japerezs@unal.edu.co", phone: "3114629654", identification: 1040628755 )
 #Student.create( firstname: "Camilo", lastname: "Reyes", email: "careyesp@unal.edu.co", phone: "3214629298", identification: 1034628751 )
 #Student.create( firstname: "Felipe", lastname: "Carmelo", email: "fecarmelot@unal.edu.co", phone: "3004629362", identification: 1087287578 )
 
 #Administrator.create(firstname: "Leonardo", lastname: "Quintero", email: "lequinterop@unal.edu.co", phone: "3204876521", identification: 1031872345 )
 
 #Director.create( firstname: "Gabriel", lastname: "Mañana", email: "gmañanan@unal.edu.co", phone: "3132821290", identification: 79499271)
 #Director.create( firstname: "Jairo", lastname: "Aponte", email: "japontev@unal.edu.co", phone: "3144321212", identification: 74876342)

Student.destroy_all
 
100.times do |index|
  Student.create!(firstname: Faker::Name.first_name,
                lastname: Faker::Name.last_name,
                email: Faker::Internet.free_email,
                phone: Faker::Number.number(10),
  				identification: Faker::Number.number(7))
end

p "Created #{Student.count} Students"

Director.destroy_all
 
100.times do |index|
  Director.create!(firstname: Faker::Name.first_name,
                lastname: Faker::Name.last_name,
                email: Faker::Internet.free_email,
                phone: Faker::Number.number(10),
  				identification: Faker::Number.number(7))
end

p "Created #{Director.count} Directors"

Administrator.destroy_all
 
100.times do |index|
  Administrator.create!(firstname: Faker::Name.first_name,
                lastname: Faker::Name.last_name,
                email: Faker::Internet.free_email,
                phone: Faker::Number.number(10),
  				identification: Faker::Number.number(7))
end

p "Created #{Administrator.count} Administrators"

