class Capstone < ApplicationRecord

  belongs_to :student

  validates :name, presence: true
  
end
