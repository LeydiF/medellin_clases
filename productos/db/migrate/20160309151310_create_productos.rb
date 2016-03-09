class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :referencia
      t.string :color
      t.string :talla
      t.string :categoria
      t.string :tipo
      t.string :marca
      t.string :descripcion
      t.string :tela
      t.integer :cantidad
      t.float :costo
      t.float :precio

      t.timestamps null: false
    end
  end
end
