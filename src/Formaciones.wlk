import VagonesDePasajeros.*
import VagonesDeCarga.*
import VagonesDormitorio.*
import Locomotoras.*

class Formacion {
	const property locomotoras = []
	const property vagones = []
	
	method totalVagonesPopulares() = vagones.count({v => v.esVagonPopular()})
	method formacionCarguera() = vagones.all({v => v.pesoMaximo() >= 1000})
	method baniosEnLaFormacion() = vagones.count({v => v.tieneBanio()}) 
	method cantidadMaximaDePasajeros() = vagones.sum({v => v.cantidadDePasajeros()})	
	
	method agregar(unVagon) {
		vagones.add(unVagon)
	}
	
	method pesoDelVagonDeMayorPesoMaximo() = vagones.max({v => v.pesoMaximo()}).pesoMaximo()
	method pesoDelVagonDeMenorPesoMaximo() = vagones.min({v => v.pesoMaximo()}).pesoMaximo()
	method dispersionDePesos() = self.pesoDelVagonDeMayorPesoMaximo() - self.pesoDelVagonDeMenorPesoMaximo()
	
	// Metodos agregados a partir de las locomotoras
	
	method velocidadMaxima() = locomotoras.min({l => l.velocidadMaxima()}).velocidadMaxima()
}
