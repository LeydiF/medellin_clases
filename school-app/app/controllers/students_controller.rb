class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		@student.save
		redirect_to students_path
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		@student.update_attributes(student_params)
		redirect_to mostrar_materias_path(@student)
	end

	def destroy
		
	end

	private

	# Strong parameters
	def student_params
		params.require(:student).permit(:name, :code, { subject_ids: [] })
	end


end
