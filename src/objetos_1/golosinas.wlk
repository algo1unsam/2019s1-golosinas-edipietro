object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var perso
}

object caramelo {
	// definir
}

object chupetin {
	// definir
}

object oblea {
	// definir
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
}

object golosinaBaniada {
	var gusto
	var golosinaInterior
	var pesoBanio = 4
	var property pesoInicial
	var precioGolosina=2
	var property precioBase
	var gluten=true
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina}
	
	method precioBase(precio){precioBase=precio}
	method precio() { return precioGolosina + precioBase  }

	method pesoInicial(peso_){pesoInicial=peso_+pesoBanio}
	method peso() { return self.pesoInicial()}
	
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	
	method tieneGluten(){return gluten}
	method libreGluten() { 
		if(golosinaInterior==gluten)
		return golosinaInterior.gluten() 
		else
		return gluten !=(self.tieneGluten())
		
		}
}

object tuttifrutti {
	// como manejar el cambio de sabor ??
	var gusto
	var peso=5
	var property libreGluten =false
	method peso()=peso
	method precio(){
		if (libreGluten) 
		return 7
		else return 10
	}
	
	method mordisco(){gusto=gusto.siguiente()
		 
	}
}
object frutilla{
	method siguiente()=self
}
object naranja{method siguiente()=self}
object chocolate{method siguiente()=self}

