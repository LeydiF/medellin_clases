class SubjectsController < ApplicationController


	def index
		@subjects = Subject.all
	end

	def by_student
		@student = Student.find(params[:student_id])
	end

	def new
		
	end

	def edit
		
	end

	def show
		
	end

	def create
		
	end

	def update
		
	end

	def destroy
		
	end

end
