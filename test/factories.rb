FactoryGirl.define do
  factory :user do
	email "hello@yahoo.com"
	password "password"
	password_confirmation "password"
  end

 

  factory :place do
  	name "Testing_Place"
  	address "123 Main Street, SF, CA 94131"
  	description "Amazing"
  	latitude "42.3631519"
    longitude "-71.056098"
    association :user

  end


end