class Student < ApplicationRecord
    has_many :teachers, through: :appointment
    belongs_to :user
end
