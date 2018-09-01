import ciudades.*
import comidas.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property posicion = game.at(3,3)
	method imagen() = "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	
		method teEncontro(alguien){
			game.say(self,"hola")
			alguien.DarDeComer(self)
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
