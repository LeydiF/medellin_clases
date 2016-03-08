class Passenger < ActiveRecord::Base

	has_and_belongs_to_many :flights

	validates :name, :document, :lastname, presence: true
end
