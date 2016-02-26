
for i in (1..5) do
  p "i=#{i}"
end

p "i=#{i}" # i también existe aquí

p "*"*50

# Por cada ciclo del each se esta creando una nueva variable j
# La variable j tendra el valor correspondiente pero sera reemplazada por cada ciclo
(1..5).each do |j|
  p "j=#{j}"
end

p "j=#{j}" # j existe solo en el bloque del each