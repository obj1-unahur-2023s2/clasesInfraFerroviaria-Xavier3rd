class VagonDePasajeros {
	const property largo
	const property ancho
	var property tieneBanio 
	var property estaOrdenado = true

	// Metodos polimorficos
	method cantidadDePasajeros() {
		var pasajeros = if (ancho <= 3 ){8*largo} else {10*largo}
		return if(!estaOrdenado){0.max(pasajeros-15)} else {pasajeros}
	}
	method pesoMaximo() = 2000 + (80*self.cantidadDePasajeros()) + self.cargaMaxima()
	method cargaMaxima()= if (tieneBanio) {300} else {800}
	method esVagonPopular() = self.cantidadDePasajeros() > 50
	
}
