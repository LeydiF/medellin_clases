class Student < ActiveRecord::Base
	has_many :enrollments
	has_many :subjects, through: :enrollments

	validates :name, :code, presence: true
	validates :code, uniqueness: true

end
