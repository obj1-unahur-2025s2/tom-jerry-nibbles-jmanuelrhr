object tom {
  var energia = 50
  var velocidadMaxima = 5 + (energia / 10)
  
  method velocidadMaxima() = velocidadMaxima

  method energia() = energia

  method energiaUsadaParaCorrer(metros) {
    return (metros / 2)
  }

  method aumentoDeEnergiaPorComer(raton){
    return (12 + raton.peso())
  }
  
  method correr(metros) {
    energia = energia - self.energiaUsadaParaCorrer(metros)
    velocidadMaxima = 5 + (energia / 10)
  }
  
  method comerA(raton) {
    energia = energia + self.aumentoDeEnergiaPorComer(raton)
    velocidadMaxima = 5 + (energia / 10)
  }

  method cazarA_A_(raton, metros) {
    if(self.energiaUsadaParaCorrer(metros) < self.energia()){
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
  var peso = edad * 5
  method peso() = peso

  var edad = 5
  method edad() = edad
  method cumplirAños() {
    edad = edad + 1
    peso = edad * 5
  }
} 

// Inventar otro ratón
