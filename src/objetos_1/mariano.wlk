import golosinas.*

object mariano {

	var golosinas = #{} // conjunto. Vacío

	method comprar(golosina) {
		golosinas.add(golosina)
	}

	method desecharGolosinas(golosina) {
		golosinas.remove(golosina)
	}

	method golosinas() {
		/* cambiar por la implementacion correcta */
		return []
	}

	method probarGolosinas() {
		golosinas.forEach{ golosina => golosina.mordisco()}
	} // le paso que quiero hacer con cada elemento. golosina es un parámetro

	method hayGolosinasSinTACC() {
		return golosinas.any{ golosina => golosina.libreGluten() } // en el any la expresion ggoolosina.libregluten deberá devolver un booleano
	}
	method haygolosinassintacc2(){
		return golosinas.findOrElse({golosina =>golosina.esLibreDeGluten()},{false})
	}
	method preciosCuidados(){
		
		return golosinas.all({golosinas.precio()<=10})
	}
	
	method golosinaDeSabor(unSabor){
		golosinas.find({golosina =>golosinas.gusto() ==unSabor})
	}
	
	method golosinasDeSabor(unSabor){
		
		return golosinas.filter{ golosina =>golosina.sabor()==unSabor}
	}
	method sabores(){
		golosinas.map{golosina => golosina.sabor()}.asSet()// el set trsansforma en conjunto y entonces no repite los elemenentos #{} lista
	}
	method golosinaMasCara(){
	return 	golosinas.max{golosina =>golosina.precio()} 	
	}
    method pesoGolosina(){
    return 	golosinas.sum{golosina =>golosina.peso()}
    }
}
//find devuelve el primer elemento que encuentra. No tiene orden.
//filter devuelve todos los elementos que cumplen una condición dada 