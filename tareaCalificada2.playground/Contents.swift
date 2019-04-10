import UIKit

enum Velocidades : Int{ //Declaracion de enumeración
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120 //Casos
    
    init(velocidadInicial : Velocidades){ //Inicializador que recibe una velocidad
        self = velocidadInicial           //Se asigna a self el valor de velocidadInicial
    }
}

class Auto{ //Declaración clase auto
    var velocidad : Velocidades //Atributo, variable que es una instancia de la enumeración
    
    init(){
        self.velocidad = Velocidades.Apagado //Inicializa la instancia en apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {//Funcion CDV
        
        var actual = velocidad.rawValue //se toma el valor actual de velocidad del objeto auto
        
        switch velocidad {  //Casos, cada uno retorna la tupla con la velocidad actual
        case .Apagado :     //y la layenda de la velocidad correspondiende
            self.velocidad = Velocidades.VelocidadBaja
            return (actual,"Apagado")
        case .VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            return (actual,"Velocidad baja")
        case .VelocidadMedia:
                self.velocidad = Velocidades.VelocidadAlta
                return (actual,"Velocidad media")
        case .VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            return (actual,"Velocidad alta")
        }
    }
}

var auto = Auto()   //Inicialización instancia clase Auto

for _ in 1...20{ //for de 20 iteraciones
    var (velocidadActual, mensaje) = auto.cambioDeVelocidad()
    print("\(velocidadActual), \(mensaje)")
}
