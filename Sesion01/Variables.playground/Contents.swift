import UIKit

//******************* TIPOS DE VARIABLE ******************
/*
    Mutables (var)
        * Puede cambiar su valor en cualquier momento dentro de su ciclo de vida
        
    Inmutable (let)
        * No puede cambiar su valor. Nace con un valor y este no puede ser alterado en su ciclo de vida, scope, ámbito, etc.
 
 */

let nombre      = "kenyi"
let apellido    = "rodriguez"
var edad        = 31

edad = 32
edad = 33

var precio = 5.0
let impuesto = 2.0

precio = precio + impuesto


//******************* TIPOS DE DECLARACIÓN ********************
/*
 
    IMPLÍCITA:
        * Swift detecta el tipo de dato que se le asigna a una variable de modo automático.
        * No necesita que se le especifique que tipo de dato almacena.
 
    EXPLÍCITA:
        * Es necesario especificar el tipo de dato que guarda la variable.
 
 */

var precioProducto: Double = 6.0
let impuestoProducto = 2.3

var precioTotalProducto = precioProducto + impuestoProducto


/*
 Si vas de Float a Double, ganas decimales
 Si var de Double a Float, pierdes decimales
 */

let mensualidad: Float = 700.5
let gastosPasaje = 200.707

let gastoTotal = mensualidad + Float(gastosPasaje)


//******************* String ********************

let nombreCompleto1 = nombre + apellido
let nombreCompleto2 = nombre + " " + apellido
let nombreCompleto3 = nombre + " " + apellido + " " + String(edad)
let nombreCompleto4 = "\(nombre) \(apellido) \(edad)"
let nombreCompleto5 = "Nombre: \(nombre) - Apellido: \(apellido) - Edad: \(edad)"
print(nombreCompleto5)

let nombreCompleto6 = "- Nombre: \(nombre)\n- Apellido: \(apellido)\n- Edad: \(edad)"
print(nombreCompleto6)


