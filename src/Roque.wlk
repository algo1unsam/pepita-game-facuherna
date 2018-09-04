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
		if(comidaActual!=null){
		ave.come(comidaActual)
		game.addVisualIn(comidaActual,game.at(1.randomUpTo(9),1.randomUpTo(9)))
		comidaActual=null
		}
	}
	
}

