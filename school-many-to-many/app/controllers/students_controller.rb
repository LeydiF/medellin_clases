class StudentsController < ApplicationController

	def index
		@students = Student.all

		@students2 = @students.where("name LIKE ?", "%m%")
		# SELECT * FROM STUDENTS WHERE name LIKE "%m%"
		@students3 = @students.where("name LIKE ?", "%#{params[:name]}%")
		# SELECT * FROM STUDENTS WHERE name = "Marlon"

		# http://localhost:3000/students?name=Juancho&code=COD
		
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			redirect_to students_path, notice: "Se creo correctamente"
		else
			render :new
		end
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		if @student.update_attributes(student_params)
			redirect_to students_path, notice: "Se actualizo correctamente"
		else
			render :edit
		end
	end

	private

	def student_params
		params.require(:student).permit(:name, :code, {subject_ids: []})
	end

end
