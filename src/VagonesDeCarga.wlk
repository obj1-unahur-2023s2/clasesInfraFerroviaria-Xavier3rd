class VagonDeCarga {
	const property cargaMaximaIdeal
	var property maderasSueltas
	
	// Metodos polimorficos
	method pesoMaximo() = 1500 + self.cargaMaxima()
	method cantidadDePasajeros() = 0
	method tieneBanio() = false
	method cargaMaxima() = 0.max(cargaMaximaIdeal - (400*maderasSueltas))
	method esVagonPopular() = self.cantidadDePasajeros() > 50
}
	
	
