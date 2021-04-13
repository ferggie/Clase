import UIKit

//***************** FUNCIONES ****************
/*
 
    Partes:
        * func, class func, private class func, public func, etc
        * nombre de la función
        * argumentos (argumentoSintaxis1, argumentoSintaxis2, argumentoSintaxis2)
        * -> Esto indica que la función retorna algo (Void, Int, Float, etc) Si es un Void, es opcional
        * Tipo de dato que retorna (Void, Int, Float, etc) Si es un Void, es opcional
    
    Parte Argumento:
        * Alias del argumento (_ , un nombre, nada)
        * Nombre de la variable
        * Tipo de dato de la variable( : Int, : Double, : Float, : String)
 
 
    EJEMPLO DE DECLARACIÓN:
    =======================
        Funciones sin argumento:
            func nombreFuncion()
            func nombreFuncion() -> Void
            func nombreFuncion() -> Float
 
        Funciones con argumento:
            func nombreFuncion(_ param1: Int, _ param2: String) -> Float
            func nombreFuncion(alias1 param1: Int, alias2 param2: String) -> Float
            func nombreFuncion(param1: Int, param2: String) -> Float
 
        Posibles combinaciones recomendadas:
            func nombreFuncion(_ param1: Int, alias2 param2: String) -> Float
            func nombreFuncion(alias1 param1: Int, alias2 param2: String) -> Float
            func nombreFuncion(param1: Int, param2: String) -> Float
        
        Combinación NO RECOMENDADA:
            func nombreFuncion(_ param1: Int, _ param2: String) -> Float
    
    ===================
    Método de instancia
    ===================
    let objPersona = Persona()
    objPersona.estudiar()
 
    ===================
    Método de clase
    ===================
    Persona.crearNuevo()
 */


/*
 ========================
 ESTO ES VIEJO Y OBSOLETO
 ========================
 sumar(4, 8)
 registrarUsuario("Kenyi", "Rodriguez", 31)
 registrarUsuario("Juan", "Mateo", 12)
 */


//func nombreFuncion(_ param1: Int, alias2 param2: String) -> Float
// EL _ en un parámetro omite el alias y descripción de la variable
func sumarNumero1(_ n1: Int, conNumero2 n2: Int) -> Int { return n1 + n2 }
sumarNumero1(3, conNumero2: 10)

//func nombreFuncion(alias1 param1: Int, alias2 param2: String) -> Float
func sumar(numero1 n1: Int, conNumero2 n2: Int) -> Int { n1 + n2 }
sumar(numero1: 5, conNumero2: 8)

//func nombreFuncion(param1: Int, param2: String) -> Float
func sumar(n1: Int, n2: Int) -> Int { n1 + n2 }
sumar(n1: 6, n2: 7)


//==========================================
//JAMAS DEBES HACER ESTE TIPO DE DECLARACIÓN
//==========================================
func sumar(_ n1: Int, _ n2: Int) -> Int { n1 + n2 }
sumar(5, 10)



//***************** Parámetros de envio opcional ****************
/*
    * En este tipo de funciones se pueden definir parámetro de envio opcional.
    * Los inputs de envio opcional tiene un valor por defecto en su declaración
    * Se crean variantes de la misma función.
 
 */

func registrarConNombre(_ nombre: String, conApellido apellido: String, yCiudad ciudad: String = "Lima") {
    print("\n************************")
    print("Nombre: \(nombre)\nApellido: \(apellido)\nCiudad: \(ciudad)")
}

registrarConNombre("Beatriz", conApellido: "Lescano")
registrarConNombre("kenyi", conApellido: "rodriguez", yCiudad: "Trujillo")
