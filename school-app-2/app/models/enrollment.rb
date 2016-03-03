class Enrollment < ActiveRecord::Base
	belongs_to :student
	belongs_to :subject

	before_create :add_date

	def add_date
		date_added = Time.now
	end

end
