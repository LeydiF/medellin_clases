# Simbolos en Ruby
# Un simbolo es un objeto que se puede representar como un string o un entero.
# Los simbolos son inmutables! es decir no pueden cambiar despues de ser definidos

# p :nombre
# p :nombre.capitalize.to_s
# p :nombre.length
# p :nombre.object_id

# p :nombre == :nombre

# p "Nombre".object_id == "Nombre".object_id


# :nombre = "Marlon" #ERROR: No pueden asignar o cambiar un simbolo!

# class Persona

#   attr_accessor :sueldo, :direccion, :telefono

#   def initialize
#     @sueldo = 1000000
#     p :nombre.object_id
#   end

#   def agregar_datos(info)
#     @direccion = info[:direccion]
#     @telefono = info[:telefono]
#   end

# end

# persona = Persona.new
# p persona.sueldo
# persona.sueldo = 2000000
# p persona.sueldo
# persona.agregar_datos direccion: "Direccion", telefono: "3004044432" 
# p persona.direccion
# p persona.telefono

# Hashes en Rubys

# Un hash es una collección de "llave" => "valor", son similares a los Arrays
# con la excepción de que los elementos son indexados por "llaves" en lugar de enteros
# Una llave de un hash puede ser cualquier objeto

# Formas de definir un Hash

# frutas_color = Hash.new()
# frutas_color[:naranja] = "naranja"
# frutas_color[:limon] = "verde"
# frutas_color[:manzana] = "roja"
# frutas_color[String] = "Soy el objeto String"

# p frutas_color
# p frutas_color.class
# p frutas_color[:fresa]
# p frutas_color[String]

# meses = {"Antioquia" => "Medellin", "Atlantico" => "Barranquilla", "Valle del cauca" => "Cali"}

# p meses
# p meses.class
# p meses["Antioquia"]
# p meses["antioquia"] # Los Keys son case sensitive, ojo con las mayusculas!

# meses.each do |m|
#   p "#{m[1]}, #{m[0]}"
# end

# meses = {:antioquia => "Medellin", :atlantico => "Barranquilla", :valle => "Cali"}

# meses.each do |m|
#   p "#{m[1]}, #{m[0].capitalize}"
# end

# meses = {antioquia: "Medellin", atlantico: "Barranquilla", valle: "Cali"}

# meses.each do |m|
#   p "#{m[1]}, #{m[0].capitalize}"
# end

# p meses.keys
# p meses.values

# meses.each_key{|k| puts k }
# meses.each_value{|v| puts v }
# meses.each_pair{|key, value| puts "#{value}, #{key}" }

# p meses.flatten

# frutas_color[:antioquia] = "Medallo papa"

# p meses.merge(frutas_color)

# p meses.delete(:antioquia)
# p meses

# hash_with_array = {position1: [1,2,3,4], position2: {pos1: 1, pos2: 2} } 

# p hash_with_array[:position1]
# p hash_with_array[:position2]