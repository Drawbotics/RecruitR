class User < ApplicationRecord
  validates :first_name, :email, :last_name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end