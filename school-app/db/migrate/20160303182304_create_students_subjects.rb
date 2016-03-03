class CreateStudentsSubjects < ActiveRecord::Migration
  def change
    create_table :students_subjects, id: false do |t|
    	t.integer :student_id, index: true
    	t.integer :subject_id, index: true
    end
  end
end
