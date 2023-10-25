class Student < ApplicationRecord 
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_projects 
  has_many :projects, through: :student_projects 
  validates :first_name, length: {minimum: 2}
  validates :last_name , length: {minimum: 2}
end