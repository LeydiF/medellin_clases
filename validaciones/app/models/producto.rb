class Producto < ActiveRecord::Base

	validates :marca, :talla, :referencia, :color, :stock, :descripcion, :costo, :precio, presence: true
  validates :talla, inclusion: { in: %w(s m l xl xxl), message: "%{value} no es una talla." }
  validates :marca, inclusion: { in: %w( adidas nike reebok ), message: "%{value} no es una marca del almacen."}
  validates :referencia, length: { is: 5 }
  validates :color, exclusion: { in: %w( rojo verde), message: "%{value} no esta disponible."}
  validates :stock, numericality: { only_integer: true }
  validates :descripcion, length: { maximum: 100 }
  validates :costo, :precio, numericality: { greater_than: 0}
end
