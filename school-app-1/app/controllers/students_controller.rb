class StudentsController < ApplicationController
	before_action :set_student, only: [:edit, :update, :destroy, :show]

	def index
		@students = Student.all
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			redirect_to students_path
		else
			redirect_to students_path, alert: "Error: #{@student.errors.full_messages.join(" ")}"
		end
	end

	def edit

	end

	def show
		
	end

	def update
		if @student.update_attributes(student_params)
			redirect_to students_path, notice: "Student was updated successfully"
		else
			redirect_to edit_student_path(@student), alert: "Error: #{@student.errors.full_messages.join(" ")}"
		end
	end

	def destroy
		@student.destroy
		redirect_to students_path
	end

	private

	def set_student
		@student = Student.find(params[:id])
	end

	def student_params
		params.require(:student).permit(:name, :identification, {subject_ids: []})
	end

end
