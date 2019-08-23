object pepita {
	var energia = 100
	
	method energia() {
		return energia
	}

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return energia.between(500, 1000)
	}
	
	method cuantoQuiereVolar() {
		var km = 0
		km = energia / 5
		if(energia.between(300, 400)) {
			km += 10
		}
		if(energia % 20 == 0)
		{
			km += 15
		}
		return km
	}
	
	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras() {
		if(self.estaCansada()) {
			self.come(alpiste)
		}
		if(self.estaFeliz()) {
			self.vola(8)
		}
	}
}
object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var estaMojado = false
	
	
	method mojarse() {
		estaMojado = true
	}
	
	method secarse() {
		estaMojado = false
	}
	
	method energiaQueOtorga() {
		if(estaMojado) {
			return 15
		}
		else return 20
	}
}

object canelones {
	var tieneSalsa = false
	var tieneQueso = false
	
	method ponerSalsa() {
		tieneSalsa = true
	}
	method quitarSalsa() {
		tieneSalsa = false
	}
	method ponerQueso() {
		tieneQueso = true
	}
	method quitarQueso() {
		tieneQueso = false
	}
	
	method energiaQueOtorga() {
		var	joules = 20
		
		if(tieneSalsa) {
			joules += 5
		}
		if(tieneQueso) {
			joules += 7
		}
		return joules
	}
}

object roque {
	method entrenar(ave) {
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
}
