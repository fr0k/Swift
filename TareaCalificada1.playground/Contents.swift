//by: fr0k

import UIKit

for numero in 0...100{  //Se inicializa el for de rango 0 a 100
    if numero % 5 == 0{ //Si el numero es divisible entre 5
        print("\(numero) Bingo!!!")
    }
    if numero % 2 == 0{ //Si el numero es par
        print("\(numero) par!!!")
    }
    if numero % 2 != 0{ //Si el numero es impar
        print("\(numero) impar!!!")
    }
    if numero >= 30 && numero <= 40{    //Si el numero se encuentra dentro de un rango del 30 al 40
        print("\(numero) Viva Swift!!!")
    }
}
