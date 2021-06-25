FactoryBot.define do
  factory :user do
    first_name { Faker::Name.name }
    last_name { Faker::Name.name }
    email { Faker::Internet.email }

    factory :recruiter, class: Users::Recruiter do
      type { 'Users::Recruiter' }
    end

    factory :candidate, class: Users::Candidate do
      type { 'Users::Candidate' }
    end

  end
end