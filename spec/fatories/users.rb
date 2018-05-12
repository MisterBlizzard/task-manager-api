FactoryGirl.define do
    factory :user do
        email { Faker::Internet.email }
        password "guitar24"
        password_confirmation "guitar24"
    end
end