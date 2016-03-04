class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.integer :num_materias

      t.timestamps null: false
    end
  end
end
