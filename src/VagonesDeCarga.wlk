class VagonDeCarga {
	var property cargaMaximaIdeal
	var property maderasSueltas
	
	method tieneBanio() = false
	method cargaReal() = cargaMaximaIdeal - (400*maderasSueltas)
	method pesoMaximo() = 1500 + self.cargaReal()
	method cantidadDePasajeros() = 0
	method esVagonPopular() = self.cantidadDePasajeros() > 50
}
