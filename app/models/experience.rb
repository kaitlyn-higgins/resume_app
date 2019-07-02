class Experience < ApplicationRecord

  belongs_to :student

  validates :title, :details, presence: true

end
