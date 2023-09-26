import VagonesDePasajeros.*
import VagonesDeCarga.*
import VagonesDormitorio.*

class Formacion {
	const property vagones = []
	
	method totalVagonesPopulares() = vagones.count({v => v.esVagonPopular()})
	method formacionCarguera() = vagones.all({v => v.pesoMaximo() > 1000})
	method totalDeBaniosEnLaFormacion() = vagones.count({v => v.tieneBanio()}) 	
	method elVagonDeMayorPesoMaximo() = vagones.find({v => 0.max(v.pesoMaximo())})
	method elVagonDeMenorPesoMaximo() = vagones.find({v => 0.min(v.pesoMaximo())})
	
	method dispersionDePesos() = self.elVagonDeMayorPesoMaximo() - self.elVagonDeMenorPesoMaximo()
}
