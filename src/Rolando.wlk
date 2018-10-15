import Hechizos.*
import FuerzaOscura.*
import Artefactos.*

//jaja era acá
object rolando {

	var hechizoPreferido
	var artefactos = []
	var valorBaseDeLucha = 1

	method nivelDeHechiceria() {
		 return 3 * hechizoPreferido.poder() + fuerzaOscura.valor()
	}


//REVISAR
	method hechizoPreferido(nuevoHechizo) {
		hechizoPreferido = nuevoHechizo
	}

	method seCreePoderoso() {
		return hechizoPreferido.esPoderoso()
	}

	// ¿El valor base puede ser menor que 1?
	method valorBaseDeLucha(nuevoValor) {
		valorBaseDeLucha = 1.max(nuevoValor)
	}

	method agregarArtefacto(nuevoArtefacto) {
		nuevoArtefacto.duenio(self)
		artefactos.add(nuevoArtefacto)
	}

	method removerArtefacto(unArtefacto) {
		artefactos.remove(unArtefacto)
	}
	
	method removerTodosLosArtefactos() {
		artefactos.clear()
	}

	method habilidadParaLuchar() {

	    return valorBaseDeLucha + artefactos.sum({ artefacto => artefacto.unidadesDeLucha() })
	}
	 method tieneMasQueUnEspejo() {
	 	return !(artefactos == [espejo] || artefactos.isEmpty())
	 }

	method habilidadParaLucharMayorAnivelDeHechiceria() {
		return self.habilidadParaLuchar() > self.nivelDeHechiceria()
	}
	method artefactosSinEspejo() {
		return artefactos.filter({artefacto => artefacto != espejo})
	}
	method mejorArtefacto() {
	return self.artefactosSinEspejo().max({ artefacto => artefacto.unidadesDeLucha()})
	}

	method estaCargado() {
		return artefactos.size() >= 5
	}

}

