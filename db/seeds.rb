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
Administrator.destroy_all

Feedback.destroy_all
FileGradework.destroy_all
JuriesGradeworks.destroy_all
DirectorsGradework.destroy_all


Gradework.destroy_all
Director.destroy_all
Jury.destroy_all








100.times do |index|
  Student.create!(firstname: Faker::Name.first_name,
                lastname: Faker::Name.last_name,
                email: Faker::Internet.free_email,
                phone: Faker::Number.number(10),
  				identification: Faker::Number.number(7))
end

p "Created #{Student.count} Students"


 
100.times do |index|
  Director.create!(firstname: Faker::Name.first_name,
                lastname: Faker::Name.last_name,
                email: Faker::Internet.free_email,
                phone: Faker::Number.number(10),
  				identification: Faker::Number.number(7))
end

p "Created #{Director.count} Directors"


 
100.times do |index|
  Administrator.create!(firstname: Faker::Name.first_name,
                lastname: Faker::Name.last_name,
                email: Faker::Internet.free_email,
                phone: Faker::Number.number(10),
  				identification: Faker::Number.number(7))
end

p "Created #{Administrator.count} Administrators"

100.times do |index|
  Jury.create!(firstname: Faker::Name.first_name,
                        lastname: Faker::Name.last_name,
                        email: Faker::Internet.free_email,
                        phone: Faker::Number.number(10),
                        identification: Faker::Number.number(7))
end

p "Created #{Jury.count} Juries"



100.times do |index|
    Gradework.create!(
        name: Faker::StarWars.character,
        description: Faker::StarWars.wookie_sentence,
        status: Faker::Pokemon.name,
        delivery_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
        begin_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
        hour: Faker::Time.between(DateTime.now - 1, DateTime.now),
        locale: Faker::Address.street_address,
        semester: Faker::Number.between(1, 10)
    )

end

p "Created #{Gradework.count} Gradeworks"

100.times do |index|
  Feedback.create!(
               director_id: Director.ids.sample,
               gradework_id: Gradework.ids.sample,
               score: Faker::Number.between(1, 5),
               anotation: Faker::Lorem.paragraph)
end

p "Created #{Feedback.count} Feedbacks"


100.times do |index|
  FileGradework.create!(
      name: Faker::StarWars.character,
      path: Faker::File.file_name('path/to'),
      description: Faker::Lorem.paragraph,
      size: Faker::Number.between(1, 10),
      gradework_id: Gradework.ids.sample,
  )
end

p "Created #{FileGradework.count} FileGradeworks"

100.times do |index|
  DirectorsGradework.create!(
      gradework_id: Gradework.ids.sample,
      director_id: Director.ids.sample
  )
end

p "Created #{DirectorsGradework.count} DirectorsGradeworks"

100.times do |index|
  JuriesGradeworks.create!(
      gradework_id: Gradework.ids.sample,
      jury_id: Jury.ids.sample
  )
end

p "Created #{JuriesGradeworks.count} JuriesGradeworks"
