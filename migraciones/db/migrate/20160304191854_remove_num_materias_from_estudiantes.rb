class RemoveNumMateriasFromEstudiantes < ActiveRecord::Migration
  def change
  	remove_column :estudiantes, :num_materias, :integer
  end
end
