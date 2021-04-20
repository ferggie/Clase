import UIKit

//********************** DICCIONARIOS ******************
/*
    * Es una collección de datos
    * La data guardada responde a una estructura de clave : valor
    * TODO dato se guarda de modo obligatorio en una clave. (NO EXISTEN CLAVES SIN DATO, Y NO EXISTEN DATOS SIN CLAVE)
    * ES NECESARIO REALIZAR UNA DECLARACIÓN EXPLÍCITA.
    * Los diccionarios pueden ser homogeneos en sus valores o tenes información heterogenea.
    * Lo más usado son los diccionarios heterogeneos
    * Lo usual y más recomendado es que la clave del diccionario sea del tipo String y el dato del mismo sea del tipo Any(Cualquiera)
    * La llave deber única. Es decir, no se puede repetir dentro del mismo diccionario.
 */

var diccionarioVacio: [String: Any] = [:]

var datosAlumno: [String: Any] = ["nombre"  : "Kenyi",
                                  "apellido": "Rodriguez",
                                  "edad"    : 30,
                                  "estatura": 1.76,
                                  "soltero" : true]

datosAlumno["direccion"] = "Calle los olvidados de dios 666"
datosAlumno["edad"] = 31

print(datosAlumno)


print("\n**************** IMPRIMIR SÓLO UNA KEY DEL DICCIONARIO *********************\n")

//*************** Obtener información de un diccionario ***************

let nombre = datosAlumno["nombre"]
print(nombre)


print("\n************* IMPRIMIR TODO EL DICCIONARIO ********************\n")

for informacion in datosAlumno {
    
    print("\(informacion.key) : \(informacion.value)")
}


print("\n************* CURIOSIDADES ********************\n")

var notas: [Int: Double] = [0: 13,
                            1: 10.8,
                            2: 9.6,
                            3: 14]

print(notas[4] ?? "No definido")

//8:15 estamos de regreso y RELAJATE!!!

