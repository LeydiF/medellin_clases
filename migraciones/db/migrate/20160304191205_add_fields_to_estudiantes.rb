class AddFieldsToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :fecha_nacimiento, :datetime
    add_column :estudiantes, :curso, :string
  end
end
