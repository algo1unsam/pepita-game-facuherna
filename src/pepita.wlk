import ciudades.*
import comidas.*

object pepita {

	var property energia = 100
	var property ciudad = buenosAires
	var property posicion = game.at(2, 3)

	method imagen() {
		if (energia < 10) {
			return "pepita.png"
		}
		if (energia > 100) {
			return "pepita-gorda-raw.png"
		} else return "pepita1.png"
	}

	method come(comida) {
		energia = energia + comida.energia()
	}

	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		} else unaCiudad.estar(self)
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		// TODO por qué 20???
		// acá debería estar el calculo de si le alcanza o no para volar
		if (energia > 20) {
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
		} else game.say(self, "dame de comer primero")
	}

	method teEncontro(alguien) {
		// TODO mensajes con minúscula :)
		alguien.DarDeComer(self)
	}

}

