class VagonDePasajeros {
	var property largo
	var property ancho
	var property tieneBanio 
	var property estaOrdenado = true

	
	method cantidadDePasajeros() =if (ancho <= 3 ){8*largo} else {10*largo}
	method cargaMaxima()= if (self.tieneBanio()){300} else {800}
	method pesoMaximo() = 2000 + (80*self.cantidadDePasajeros()) + self.cargaMaxima()
	method esVagonPopular() = self.cantidadDePasajeros() > 50
	
}
