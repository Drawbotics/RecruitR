module Users
  class Recruiter < ::User
    has_many :positions, inverse_of: :author, foreign_key: :author_id
  end
end

