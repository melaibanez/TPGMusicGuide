class Cancion {
	var duracion = 0
	var letra = ""
	
	method duracion(otraDuracion){
		duracion = otraDuracion 
	}
	
	method duracion(){
		return duracion
	}
	
	method letra(otraLetra){
		letra = otraLetra
	}
	
	method letra(){
		return letra
	}
}

object joaquin{

	var grupo = "Pimpinela"
	var habilidadBase = 20
	
	method perteneceAGrupo(){
		return grupo.isEmpty().negate()
	}
	
	method cambiarGrupo(otroGrupo){
		grupo = otroGrupo
		}

	method habilidad(){
		if(self.perteneceAGrupo()) return habilidadBase
		else return habilidadBase + 5
	}
	method interpretaBien(cancion){
		return cancion.duracion() > 300
	}
	method cuantoCobra(presentacion){
		if(self.perteneceAGrupo()) return 100
		else return 50
	}
}

object lucia{
	var grupo = "Pimpinela"
	var habilidadBase = 70
	method perteneceAGrupo(){
		return grupo.isEmpty().negate()
	}
	
	method cambiarGrupo(otroGrupo){
		grupo = otroGrupo
		}

	method habilidad(){
		if(self.perteneceAGrupo()) return habilidadBase
		else return habilidadBase - 20
	}
	method interpretaBien(cancion){
		return cancion.letra().contains("familia")
	}
	method cuantoCobra(presentacion){
		if(lugar.esConcurrido) return 500
		else return 400
	}	
}
object luisAlberto{
	var guitarra = fender
	var grupo = ""
	var habilidadBase = 8
	
	method habilidad(){
		return 100.min(habilidadBase * guitarra.valorGuitarra())
}
	method interpretaBien(cancion){
		return true
	}
	method cuantoCobra(presentacion){
		if(presentacion.fechaAsignada() < 20171001) return 1000
		else return 1200
	}
}
object fender{
	var valor = 10
	
	method valorGuitarra(){
		return valor
	}
}
object gibson{
	var valor = 15
	var buenEstado = true 
	
	method romper(){
		buenEstado = false
		valor = 5
	}
	method estaSana(){
		return buenEstado
	}
	method valorGuitarra(){
		return valor
	}
}
object lunaPark{
	const capacidadBase = 9290
	method capacidadPermitida(){
		return capacidadBase
	}
}
object trastienda{
	var presentacionesPendientes = []
	const capacidadBase
	method capacidadPermitida(){
	
	}
}

class Presentacion {
	var fechaDelEvento
	var lugarDelEvento
	var musicosParticipantes
	
	method esSabado(){
		return true
	}
	method asignarMusicos(musicos){
		musicosParticipantes.addAll(musicos)	
	}
	method asignarLugar(lugar){
		lugarDelEvento = lugar
		lugar.asignarEvento(self)
	}
	method asignarFecha(fecha){
		fechaDelEvento = fecha
	}
	method fechaAsignada(){
		return fechaDelEvento
	}
}



