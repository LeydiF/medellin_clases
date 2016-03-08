class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :reference
      t.integer :count

      t.timestamps null: false
    end
  end
end
