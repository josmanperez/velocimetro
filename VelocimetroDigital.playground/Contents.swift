//: Playground - Assignment: Un velocímetro de un automóvil digital

import UIKit

/* Enum */
enum Velocidades: Int {
  case Apagado = 0 // representa la velocidad 0.
  case VelocidadBaja = 20 // representa una velocidad de 20km por hora.
  case VelocidadMedia = 50 // representa una velocidad de 50km por hora.
  case VelocidadAlta = 120 // representa una velocidad de 120km por hora.
  
  init(velocidadInicial: Velocidades) {
    self = velocidadInicial
  }
}

/* Clase AUTO */
class Auto {
  
  var velocidad: Velocidades
  
  /* Inicializador de la clase */
  init() {
    self.velocidad = Velocidades(velocidadInicial: .Apagado)
  }
  
  /* Funcion cambio de velocidad */
  func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
    
    switch velocidad {
      
    case .Apagado :
      velocidad = .VelocidadBaja
      return (velocidad.rawValue, "Velocidad Baja")
    case .VelocidadBaja:
      velocidad = .VelocidadMedia
      return (velocidad.rawValue, "Velocidad Media")
    case .VelocidadMedia:
      velocidad = .VelocidadAlta
      return (velocidad.rawValue, "Velocidad Alta")
    case .VelocidadAlta:
      velocidad = .VelocidadMedia
      return (velocidad.rawValue, "Velocidad Media")
      
    }
  }
}


/* 
 * Pruebas de clase 
*/

// Creamos una instacia de auto
var auto:Auto = Auto()

// Imprimimos los valores iniciales de la clase auto
print("\(auto.velocidad.rawValue), \(auto.velocidad)")

/* Creamos una tupla para almacenar el resultado devuelto por la función
 * Necesario para poder imprimir ambos valores en el formato propuesto
 */
var resultado:(actual: Int, velocidadEnCadena: String)

// Creamos un for que se repita 20 veces
for index in 1...20 {

  // Guardamos el resultado para imprimirlo en un formato válido
  resultado = auto.cambioDeVelocidad()
  print("\(resultado.actual), \(resultado.velocidadEnCadena)")
}


