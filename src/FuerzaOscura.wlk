object fuerzaOscura {

	method valor() {
		if (mundo.ocurrenSucesos()) 
		   	 return 5 * mundo.influenciaOscuraTotal() 
	    else return 5
	}

}

//Separar en otro archivo
object mundo {

	var sucesosActuales = []

	method sucesoNuevo(suceso) {
		sucesosActuales.add(suceso)
	}

	method sucesoPasado(suceso) {
		sucesosActuales.remove(suceso)
	}

	method ocurrenSucesos() {
		return !sucesosActuales.isEmpty()
	}

	method influenciaOscuraTotal() {
		return sucesosActuales.sum({ suceso => suceso.influenciaEnFuerzaOscura() })
	}

}

object eclipse {

	method influenciaEnFuerzaOscura() {
		return 2
	}

}

