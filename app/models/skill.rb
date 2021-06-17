class Skill < ApplicationRecord
  has_many :skill_proficiencies, inverse_of: :skill
  has_many :users, through: :skill_proficiencies

  validates :name, presence: true
end

