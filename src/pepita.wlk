import ciudades.*
import comidas.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property posicion = game.at(2,3)
	method imagen() { 
		if(energia<10){
			return "pepita.png"
		}if(energia>100){
			return "pepita-gorda-raw.png"
		}else return "pepita1.png"
	}

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad ) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}else 	unaCiudad.estar(self)
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		if (energia>20){
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)}
		else game.say(self,"dame de comer primero")
	}	
		method teEncontro(alguien){
			alguien.DarDeComer(self)
		}
		method gorda(){
			if(energia>100){
				return "pepita-gorda-raw.png"
			}else return self.imagen()
		}
}
	
		

object roque{
	var comidaActual=null
	var property posicion = game.at(3,4)
	
	method imagen() = "jugador.png"
	
	method levantar(nuevaComida){
		game.removeVisual(nuevaComida)
		if(comidaActual!=null){
			game.addVisualIn(comidaActual, posicion.up(1))
		}
		comidaActual=nuevaComida
	}

	
	method DarDeComer(ave){
		ave.come(comidaActual)
		game.addVisualIn(comidaActual,game.at(1.randomUpTo(9),1.randomUpTo(9)))
		comidaActual=null
		
	}
	
}
