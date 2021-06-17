class SkillProficiency < ApplicationRecord
  include Rateable

  belongs_to :skill
  belongs_to :user
end

