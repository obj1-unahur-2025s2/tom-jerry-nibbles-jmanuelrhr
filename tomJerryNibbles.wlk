object tom {
  var energia = 50
  var velocidadMaxima = 5 + (energia / 10)
  
  method velocidadMaxima() = velocidadMaxima

  method energia() = energia
  
  method correr(metros) {
    energia = energia - (metros / 2)
    velocidadMaxima = 5 + (energia / 10)
  }
  
  method comerA(raton) {
    energia = energia + 12 + raton.peso()
    velocidadMaxima = 5 + (energia / 10)
  }

  method cazarA_A_metros(raton, metros) {
    var energiaGastada = (metros / 2)

    if(energiaGastada < self.energia()){
      self.comerA(raton)
    }
  }

}

object jerry {
  var edad = 2
  var peso = edad * 20

  method edad() = edad
  method peso() = peso
  method cumplirAños() {
    edad = edad + 1
    peso = edad * 20
  }
}

object nibbles {
  method peso() = 35
} 

object larry {
  method peso() = 28
  method edad() = 5
} 

// Inventar otro ratón
