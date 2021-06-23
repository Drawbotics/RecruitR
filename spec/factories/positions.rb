FactoryBot.define do
  factory :positions do
    author factory: :user
    name { Faker::Company.industry }
    status { Position::STATUS.sample }
  end
end