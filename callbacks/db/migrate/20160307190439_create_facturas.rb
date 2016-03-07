class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :codigo
      t.datetime :f_vencimiento
      t.string :nit_cliente
      t.string :cliente
      t.string :vendedor
      t.string :nit_vendedor
      t.float :iva
      t.float :precio_u
      t.float :total
      t.integer :cantidad

      t.timestamps null: false
    end
  end
end
