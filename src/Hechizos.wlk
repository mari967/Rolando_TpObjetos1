object espectroMalefico {

	var nombreHechizo

	method poder() {
		return nombreHechizo.length()
	}

	method esPoderoso() {
		return self.poder() > 15
	}

	method cambiarNombre(nuevoNombre) {
		nombreHechizo = nuevoNombre
	}
	method unidadesDeLucha() {
		return self.poder()
	}

}

object hechizoBasico {

	method poder() {
		return 10
	}

	method esPoderoso() {
		return false
	}
	method unidadesDeLucha() {
		return self.poder()
	}
}

object libroDeHechizos {

	// Si el libro de hechizos tuviera como hechizo al mismo libro,
	// y el libro fuera poderoso, habría un bucle infinito en poder(), 
	// y el poder sería infinito
	var hechizos = []
	
	method agregarHechizo(nuevoHechizo) {
		hechizos.add(nuevoHechizo)
	}
	method hechizosPoderosos() {
		return hechizos.filter({ hechizo => hechizo.esPoderoso() })
	}

	method poder() {
		return self.hechizosPoderosos().sum({ hechizo => hechizo.poder() })
	}

	method esPoderoso() {
		return self.poder() > 15
	}

}

