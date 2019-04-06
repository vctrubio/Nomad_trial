class Teacher < ApplicationRecord
    has_many :appointments
    has_many :students, through: :appointment
end
