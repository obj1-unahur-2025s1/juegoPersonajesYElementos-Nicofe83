import jugadoresPersonajes.*

// Elementos
object castillo {
    var nivelDeDefensa = 150
    method altura() = 20
    method nivelDeDefensa() = nivelDeDefensa
    method ataque(arma) {
        nivelDeDefensa = nivelDeDefensa - arma.potencia()
    }
    method valor() = nivelDeDefensa / 5
    method recibirTrabajo() { nivelDeDefensa = nivelDeDefensa + 20 }
}

object aurora {
    var estaViva = true
    method altura() = 1
    method vive() = estaViva
     method ataque(arma) {
        if (arma.potencia() > 10) estaViva = false
    }
}

object tipa {
    var altura = 8
    method altura() = altura
    method crecer(metros) { 
        altura = altura + metros
    method ataque(arma) {
    }
    }
}

//Armas

object ballesta {
    var flechas = 10
    var estaCargada = true
    var potencia = 4

    method potencia() = potencia
    method flechas() = flechas
    method estaCargada() = flechas > 0
    method disparar() = if (self.estaCargada()) { flechas = flechas -1}
    method ataque(elemento) {
        self.disparar()
        elemento.ataque(self)
    }

}

object jabalina {
    var estaCargada = true

    method potencia() = 30
    method estaCargada() = estaCargada
    method ataque(elemento) {
        estaCargada = false
        elemento.ataque(self)
    }
}