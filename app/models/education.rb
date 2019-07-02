class Education < ApplicationRecord

  belongs_to :student

  validates :university, :start_date, :end_date, presence: true


end
