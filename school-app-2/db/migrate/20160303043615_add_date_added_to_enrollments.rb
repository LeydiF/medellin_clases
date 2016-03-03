class AddDateAddedToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :date_added, :datetime
  end
end
