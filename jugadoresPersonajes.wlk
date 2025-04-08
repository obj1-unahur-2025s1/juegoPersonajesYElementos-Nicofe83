import elementos.*
object luisa {
    var personajeActivo = floki
}


object floki {
    var arma = ballesta
    
    method arma() = arma
    method arma(unArma) { arma = unArma}
    method encontrar(elemento){
        if (arma.estaCargada()) arma.ataque(elemento)  
    }
}


object mario {
    var valorRecolectado = 51
    var estaFeliz = true
    var elemento = castillo
    
    method elemento() = elemento
    method elemento(unElemento) {elemento = unElemento}
    method valorRecolectado() = valorRecolectado
    method encontrar(elemento) {
        valorRecolectado = valorRecolectado + elemento.valor()
        elemento.recibirTrabajo()
        
    }
    method esFeliz() {
         valorRecolectado() >= 50 || elemento.altura() >= 10
    }
}