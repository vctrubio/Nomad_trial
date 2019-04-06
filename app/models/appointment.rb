class Appointment < ApplicationRecord
  belongs_to :teacher
  belongs_to :user
  has_many :lessons
end
