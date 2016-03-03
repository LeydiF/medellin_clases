class Student < ActiveRecord::Base
	has_and_belongs_to_many :subjects

	validate :minimum_subjects

	def minimum_subjects
		errors.add(:subjects, "Student must have at least 1 subject") if subjects.length == 0
	end

end