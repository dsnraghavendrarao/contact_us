FactoryBot.define do
	factory :contact_form , class: ContactForm do
		first_name { "Test 1" } 
		last_name { "Test 2" }
		sequence(:email) do |n|
            "testmail+#{n}@gmail.com"
        end
		phone { rand(10) } 
		message { "Test message" }
	end
end