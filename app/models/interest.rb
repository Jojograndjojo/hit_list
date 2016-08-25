class Interest < ApplicationRecord
  belongs_to :user, foreign_key: true
  belongs_to :company, foreign_key: true
end
