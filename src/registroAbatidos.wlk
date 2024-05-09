object registroAbatidosCOD {
	
	const property registro = []
		
	method agregarRegistroAbatidos(numero,fecha){
		registro.add([numero,fecha])
	}
	
	method cantidadDeDiasRegistrados() = registro.size()
	
	method estaVacioElRegistro() = registro.isEmpty()
		
	method algunDiaAbatio(cantidad) = registro.contains(cantidad) 
	 
	method primerValorDeAbatidos() = registro.first().get(0)
	 
	method ultimoValorDeAbatidos() = registro.last().get(0)
	 
	method maximoValorDeAbatidos() = registro.max().get(0)
	
	method totalAbatidos() = registro.sum( {r => r.first()})
	
	method cantidadDeAbatidosElDia(dia) = registro.get(dia).get(0)
	
	method ultimoValorDeAbatidosConSize() = registro.last() == registro.get(registro.size()-1)
	
	method diasConAbatidosSuperioresA(cuanto) {
	  return registro.filter( { r => r.get(0) >= cuanto } ).map({r=> r.get(1) })
    }
   
    method valoresDeAbatidosPares(){
      return registro.filter( { r=>r.first().even()} ).map({r=> r.get(0) })
    }
    
    method abatidosSumando(cantidad) =  registro.map( {r => r.first() + cantidad})
    
    method abatidosEsAcotada(n1,n2) = registro.map( {r => r.first().between(n1,n2)})
    
    method algunDiaAbatioMasDe(cantidad) = registro.any({r=> r.first() > cantidad })
    
    method todosLosDiasAbatioMasDe(cantidad)= registro.all({r=> r.first() > cantidad })
    
    method cantidadAbatidosMayorALaPrimera()= registro.count({r=> r.first() > registro.get(0).first() })
    
    	
    
    
    
    
    
}
