class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :identification
      t.string :speciality

      t.timestamps null: false
    end
  end
end
