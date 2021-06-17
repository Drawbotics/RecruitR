class SkillProficiency < ApplicationRecord
  BEGINNER = 'beginner'.freeze
  PROFICIENT = 'proficient'.freeze
  ADVANCED = 'advanced'.freeze
  EXPERT = 'expert'.freeze
  PRINCIPAL = 'principal'.freeze
  PROFICIENCIES = [BEGINNER, PROFICIENT, ADVANCED, EXPERT, PRINCIPAL].freeze

  belongs_to :skill
  belongs_to :user

  validates :proficiency, inclusion: { in: PROFICIENCIES }, allow_blank: true
end

