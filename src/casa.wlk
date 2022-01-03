import cosas.*
import cuentas.*

object casa{
	var cosas = []
	
method gastar(importe){
	cuentaCorriente.extraer(importe)
}

method dineroDisponible(){
	return cuentaCorriente.saldo()
}

method comprar(cosa){
	cosas.add(cosa)
	cuentaCorriente.extraer(cosa.precio())
}

method cantidadDeCosasCompradas(){
	return cosas.size()	
}

method tieneComida(){
	return cosas.any( {x => x.esComida()} )
}

method vieneDeEquiparse(){
	return cosas.last().esElectro() or cosas.last().precio() > 5000
}

method esDerrochona(){
	return cosas.sum ( { x => x.precio()}) >= 9000
}

method compraMasCara(){
	return cosas.max({x => x.precio()})
}

method electrodomesticosComprados(){
	return cosas.filter({ x => x.esElectro()})
}

method malaEpoca(){
	return cosas.all( { x => x.esComida()})
}

method queFaltaComprar(unaLista){
	
}

method faltaComida(){
	return cosas.filter({x => x.esComida()}).size() > 2
}

}