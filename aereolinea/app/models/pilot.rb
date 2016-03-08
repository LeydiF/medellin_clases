class Pilot < ActiveRecord::Base
	has_many :flights

	def complete
		"#{name} #{lastname}"
	end
end
