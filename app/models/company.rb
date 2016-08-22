class Company < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :location, presence: true
  validates :project, presence: true
  validates :interesting_thing, presence: true
  validates :person_working_there, presence: true
end
