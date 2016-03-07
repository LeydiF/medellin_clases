json.array!(@facturas) do |factura|
  json.extract! factura, :id, :codigo, :f_vencimiento, :nit_cliente, :cliente, :vendedor, :nit_vendedor, :iva, :precio_u, :total, :cantidad
  json.url factura_url(factura, format: :json)
end
