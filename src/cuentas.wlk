object cuentaCorriente {
	var saldo = 50000
	
method depositar(unValor){
		saldo += unValor
}

method extraer(unValor){
	saldo -= unValor
}

method saldo(){
	return saldo
}

}


object cuentaGastos{
	var saldo = 0

method depositar(unValor){
		saldo = saldo + (unValor - 20)
}

method extraer(unValor){
	if (unValor <= 1000){
		saldo = saldo - (unValor - 20)
	}
	else 
	{
		saldo = saldo - (unValor * 1.02)
	}
	
	}


method saldo(){
	return saldo}
	
}


object cuentaCombinada{
	
var saldo = cuentaCorriente.saldo() + cuentaGastos.saldo()

	
method depositar(unValor){
  cuentaCorriente.depositar(unValor)
  saldo = cuentaCorriente.saldo() + cuentaGastos.saldo()
}

method extraer(unValor){
	if (cuentaCorriente.saldo() >= unValor){
		cuentaCorriente.extraer(unValor)
	}
	else{
		cuentaGastos.extraer(unValor)
	}
	saldo = cuentaCorriente.saldo() + cuentaGastos.saldo()
}

method saldo(){
	return cuentaCorriente.saldo() + cuentaGastos.saldo()
}

}