class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :document
      t.string :lastname

      t.timestamps null: false
    end
  end
end
