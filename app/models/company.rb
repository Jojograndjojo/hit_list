class Company < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :interests
  has_many :users, through: :interests
end
