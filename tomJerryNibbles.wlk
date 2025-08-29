object tom {
  var energia = 50
  var velocidadMaxima = 5 + (energia / 10)
  
  method velocidadMaxima() = velocidadMaxima

  method energia() = energia
  
  method correr(metros) {
    energia = metros - metros / 2
    velocidadMaxima = 5 + (energia / 10)
  }
  
  method comerA(raton) {
    energia = energia + 12 + raton.peso()
    velocidadMaxima = 5 + (energia / 10)
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

// Inventar otro ratón