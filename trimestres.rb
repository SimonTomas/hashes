ventas = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 21000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
    }
    
quarters = {}
arr_ventas = ventas.values.to_a
trim = arr_ventas.each_slice(3).to_a
num_trim = 1

trim.each do |i|
    i.map{|e| e.to_i}
    quarters["Q#{num_trim}"] = i.sum
    num_trim +=1
end

print quarters
puts