class Student < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :experiences
  has_many :educations
  has_many :skills
  has_many :capstones

<<<<<<< HEAD
=======
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
>>>>>>> a00213eda9bd4320bf2589579bdc406b1579034f
end
