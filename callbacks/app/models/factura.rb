class Factura < ActiveRecord::Base


	before_create :calcular_iva

	before_create :calcular_total


	def calcular_iva
		self.iva = self.cantidad * self.precio_u * 0.16
	end

	def calcular_total
		self.total = self.iva + self.cantidad*self.precio_u
	end
end
