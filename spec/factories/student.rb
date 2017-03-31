require 'faker'
FactoryGirl.define do
	factory :student do |f|
		f.firstname {Faker::Name.first_name}
		f.lastname {Faker::Name.last_name  }
		f.phone {Faker::PhoneNumber.phone_number}
		f.email {Faker::Internet.email}
		f.identification {Faker::Number.number(10)}
	end
end