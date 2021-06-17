class Position < ApplicationRecord
  UNPUBLISHED = 'unpublished'.freeze
  PUBLISHED = 'published'.freeze
  ACCEPTED = 'accepted'.freeze
  CANCELLED = 'cancelled'.freeze
  STATUS = [UNPUBLISHED, PUBLISHED, ACCEPTED, CANCELLED].freeze

  belongs_to :author, class_name: 'Users::Recruiter'

  validates :name, presence: true
  validates :status, inclusion: { in: STATUS }
end

