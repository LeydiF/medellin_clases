class RenameTableEstudiantes < ActiveRecord::Migration
  def change
  	rename_table :estudiantes, :students
  end
end
