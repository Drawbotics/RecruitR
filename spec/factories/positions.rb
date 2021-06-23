FactoryBot.define do
  factory :position do
    author factory: :recruiter
    name { Faker::Company.industry }
    status { Position::STATUS.sample }
  end
end