import pepita.*
import comidas.*

object villaGesell {
	method imagen() = "ciudad.png"
	method nombre() = "Villa Gesell"
	method posicion() = game.at(8,3)
	method teEncontro(alguien){game.say(alguien,"llegue a la playa")}
	method estar(alguien){game.say(alguien,"ya estoy en villaGesell")}
}

object buenosAires {
	method imagen() = "ciudad.png"
	method nombre() = "Buenos Aires"
	method posicion() = game.at(1,1)
	method teEncontro(alguien){game.say(alguien,"llegue al centro")}
	method estar(alguien){game.say(alguien,"ya estoy en buenosAires")}
}
