class AddApellidoToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :apellido, :string
    add_column :estudiantes, :seg_nombre, :string
  end
end
