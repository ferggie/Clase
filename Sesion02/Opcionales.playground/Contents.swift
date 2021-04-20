import UIKit

//********************* VARIABLES OPCIONALES ********************
/*
 
    * Son un tipo de dato especial
    * Todo tipo de dato (Int, Float, Double, Bool, String, [String], etc, etc, etc...) puede ser opcionales
    * Toda variable opcional admite dos posibles valores: El dato o un nulo (nil, null, vacio)
    * Las variables opcionales no regresan directamente el dato que se les asigno.
    * Para acceder al dato que se le asigna a una variable opcional es necesario hacer un proceso de unwrapping (??)
    * Al hacer un unwrapping este puede fallar. Por ende, debemos asignar un valor por defecto, el cual se recomienda que sea del mismo tipo de dato de la variable.
 */

var precio  : Double = 5.8
var igv     : Double? = 1.2

let precioFinal = precio + (igv ?? 0)

let nombre = "kenyi"
let apellido = "rodriguez"
let direccion: String? = nil//"Calle sin ley, los olvidados del señor 666"

print("Nombre: \(nombre)")
print("Apellido: \(apellido)")
print("Dirección: \(direccion ?? "No especificada")")
//print("Dirección: \(direccion!)") ESTO NO LO HAGAS JAMASS!!!! EN TU VIDA... NEVER FORCE UNWRAPPING



//******************** GUARD LET / GUARD VAR ********************
/*
        * Nos permite crear variables seguras (variable sin fallo) a partir de una variable insegura ( opcional )
        * En caso falle la creación de esta variable segura, el guard nos permite abrir un flujo para manejar el error
        * Cuando se ejecuta el error en el guard, es obligatorio el return, el cual DETIENE TODO EL FLUJO
        * SÓLO SE USA DENTRO DE FUNCIONES
        * La nueva variable creada sólo es visible en el contexto actual, scope, alcance, etc..
        * Se usa para crear variables seguras de flujo crítico.
 */

func guardletCrearUsuario(nombre: String?, apellido: String?) {

    guard let nombreSeguro = nombre else {

        print("Aca se maneja el error del nombre")
        print("No seas firulais e ingresa un nombre")
        return
    }

    guard let apellidoSeguro = apellido else {
        print("Aca se maneja el error del apellido")
        print("No seas firulais e ingresa un apellido")
        return
    }
    
    print("Se registro con éxito al usuario \(nombreSeguro) \(apellidoSeguro)")

}


func guardletCrearUsuario2(nombre: String?, apellido: String?) {

    guard let nombreSeguro = nombre, let apellidoSeguro = apellido else {

        print("Aca se maneja el error del nombre y apellido")
        print("No seas firulais e ingresa un nombre o apellido")
        return
    }
    
    print("Se registro con éxito al usuario \(nombreSeguro) \(apellidoSeguro)")

}

//******************** IF LET / IF VAR ********************
/*
        * Nos permite crear variables seguras (variable sin fallo) a partir de una variable insegura ( opcional )
        * En caso falle la creación de esta variable segura, el if let no ejecuta una porción de código de manera satisfactoria.
        * SÓLO SE USA DENTRO DE FUNCIONES
        * La nueva variable creada sólo es visible dentro un un nuevo contexto, scope, alcance, etc..
        * Se usa para crear variables seguras de flujo crítico.
 */


func ifletCrearUsuario(nombre: String?, apellido: String?) {

    if let nombreSeguro = nombre, let apellidoSeguro = apellido {
        print("Se registro con éxito al usuario \(nombreSeguro) \(apellidoSeguro)")
        
    } else {
        print("Aca se maneja el error del nombre y apellido")
        print("No seas firulais e ingresa un nombre o apellido")
    }
}

func ifletCrearUsuario2(nombre: String?, apellido: String?) {

    if let nombreSeguro = nombre {
        
        if let apellidoSeguro = apellido {
            print("Se registro con éxito al usuario \(nombreSeguro) \(apellidoSeguro)")
        }else {
            print("Aca se maneja el error del nombre y apellido")
            print("No seas firulais e ingresa un nombre o apellido")
        }
        
    } else {
        print("Aca se maneja el error del nombre y apellido")
        print("No seas firulais e ingresa un nombre o apellido")
    }
}
