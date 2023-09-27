class VagonDormitorio {
	const property compartimientos
	var property camasPorCompartimiento
	
	// Metodos polimorficos
	method cantidadDePasajeros() = compartimientos * camasPorCompartimiento
	method pesoMaximo() = 4000 + (80* self.cantidadDePasajeros()) + self.cargaMaxima()
	method tieneBanio() = true
	method cargaMaxima() = 1200
	method esVagonPopular() = self.cantidadDePasajeros() > 50
}
