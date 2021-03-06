class Course < ApplicationRecord
  validates :short_name, presence: true
  validates :name, presence: true, length: { minimum: 3, maximum: 30 }
  validates :description, presence: true, length: { minimum: 10 }
  has_many :student_courses
  has_many :students, through: :student_courses
end
