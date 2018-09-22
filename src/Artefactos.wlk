import Hechizos.*
import FuerzaOscura.*

object espadaDelDestino {

	var duenio

	method duenio(persona) {
		duenio = persona
	}
	method unidadesDeLucha() {
		return 3
	}
}

object collarDivino {

	var perlas
	var duenio

	method duenio(persona) {
		duenio = persona
	}

	method perlas(cantidad) {
		perlas = cantidad
	}

	method unidadesDeLucha() {
		return perlas
	}

}

object mascaraOscura {

	var duenio

	method duenio(persona) {
		duenio = persona
	}

	method unidadesDeLucha() {
		return 4.max(fuerzaOscura.valor() / 2)
	}

}

object armadura {

	var refuerzo = ninguno
	var duenio

	method duenio(persona) {
		duenio = persona
	}

	method duenio() {
		return duenio
	}

	method refuerzo(nuevoRefuerzo) {
		refuerzo = nuevoRefuerzo
	}

	method unidadesDeLucha() {
		return 2 + refuerzo.unidadesDeLucha()
	}

}

object espejo {

	var duenio

	method duenio(persona) {
		duenio = persona
	}

	method unidadesDeLucha() {
		if (duenio.tieneMasQueUnEspejo())
		  return duenio.mejorArtefacto().unidadesDeLucha()
		else return 0
	}
}

//Refuerzos------------------------
object cotaDeMalla {

	method unidadesDeLucha() {
		return 1
	}

}

object bendicion {

	method unidadesDeLucha() {
		return armadura.duenio().nivelDeHechiceria()
	}

}


object ninguno {

	method unidadesDeLucha() {
		return 0
	}
}

