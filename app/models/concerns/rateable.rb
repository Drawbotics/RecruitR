module Rateable
  extend ActiveSupport::Concern
  include ActiveModel::Validations

  BEGINNER = 'beginner'.freeze
  PROFICIENT = 'proficient'.freeze
  ADVANCED = 'advanced'.freeze
  EXPERT = 'expert'.freeze
  PRINCIPAL = 'principal'.freeze
  PROFICIENCIES = [BEGINNER, PROFICIENT, ADVANCED, EXPERT, PRINCIPAL].freeze

  included do
    validates :proficiency, inclusion: { in: PROFICIENCIES }, allow_blank: true
  end
end