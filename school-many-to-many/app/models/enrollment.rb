class Enrollment < ActiveRecord::Base
	belongs_to :subject
	belongs_to :student

	validates :student, uniqueness: {
		scope: :subject, 
		message: "No puedes repetir materias"
	}


end