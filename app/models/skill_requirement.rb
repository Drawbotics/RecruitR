class SkillRequirement < ApplicationRecord
  include Rateable

  belongs_to :skill
  belongs_to :position
end