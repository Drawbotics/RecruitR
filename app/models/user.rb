class User < ApplicationRecord
  has_many :skill_proficiencies, inverse_of: :user
  has_many :skills, through: :skill_proficiencies

  validates :first_name, :email, :last_name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end

