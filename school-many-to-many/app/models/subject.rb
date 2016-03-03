class Subject < ActiveRecord::Base
	has_many :enrollments
	has_many :students, through: :enrollments
end
