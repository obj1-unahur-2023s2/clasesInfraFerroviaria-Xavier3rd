class VagonDormitorio {
	var property compartimentos
	var property camasPorCompartimento
	
	method cargaMaxima() = 1200
	method tieneBanio() = true
	method cantidadDePasajeros() = compartimentos * camasPorCompartimento
	method pesoMaximo() = 4000 + (80* self.cantidadDePasajeros()) + self.cargaMaxima()
	method esVagonPopular() = self.cantidadDePasajeros() > 50
}
