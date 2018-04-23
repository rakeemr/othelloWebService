class Game < ApplicationRecord
  validates :username, presence: true
  validates :gameboardsizex, presence: true
  validates :gameboardsizey, presence: true
end
