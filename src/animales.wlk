import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"


	var property peso = 200
	var property tieneSed = true
	
	
	method comer(kg) { peso += kg * 0.5 tieneSed = true }
	
	method beber() { peso = (peso - 1).max(0) tieneSed = false }
	
	
	
	
}