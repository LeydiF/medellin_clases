class RenameSegNombreFromEstudiantes < ActiveRecord::Migration
  def change
  	rename_column :estudiantes, :seg_nombre, :segundo_nombre
  end
end
