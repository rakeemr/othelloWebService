class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true
  validates :pass, presence: true
end
