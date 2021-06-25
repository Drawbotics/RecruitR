module Rateable
  extend ActiveSupport::Concern
  include ActiveModel::Validations

  BEGINNER = 'beginner'.freeze
  PROFICIENT = 'proficient'.freeze
  ADVANCED = 'advanced'.freeze
  EXPERT = 'expert'.freeze
  PRINCIPAL = 'principal'.freeze
  LEVEL = [BEGINNER, PROFICIENT, ADVANCED, EXPERT, PRINCIPAL].freeze

  included do
    validates :proficiency, inclusion: { in: LEVELS }, allow_blank: true
  end
end

