import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"


	var property peso = 200
	var property tieneSed = true
	
	
	method comer(kg) { peso += kg * 0.5 tieneSed = true }
	
	method beber() { peso = (peso - 1).max(0) tieneSed = false }
	
	method bajar () {if (peso > 50) {self.caminar() position = position.down(1) } else { self.error ("dame de comer pibe")}}
	method subir () {if (peso > 50) {self.caminar() position = position.up(1) } else { self.error ("dame de comer pibe")}}
	method derecha () {if (peso > 50) {self.caminar() position = position.right(1)} else { self.error ("dame de comer pibe")}}
	method izquierda () {if (peso > 50) {self.caminar()position = position.left(1)} else { self.error ("dame de comer pibe")}}
	
	method caminar() {peso = 50.max (peso * 0.95)}
	
}

class Gallina {
	
	
	var property position = game.at(4,5)
	const property image = "gallina.gif"
	
	
	var property peso = 4
	var property tieneSed = false
	
	var vecesComio = 0
	
	method comer (kg) { vecesComio += 1 if (vecesComio == 2 or vecesComio == 5 ) {tieneSed = true } else {tieneSed = false}}
	
	method beber () {tieneSed = false}
	
	method tieneHambre() { return vecesComio.even()
		
		
		/* vecesComio.EVEN()  [devuelve simepre que es par] */
	}
	
	method bajar () {position = position.down(1)}
	method subir () {position = position.up(1)}
	method derecha () {position = position.right(1)}
	method izquierda () {position = position.left(1)}
	
}