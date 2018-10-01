class Skill < ApplicationRecord
  has_many :userskills
  has_many :users, through: :userskills
  has_many :profiles, through: :users

end
