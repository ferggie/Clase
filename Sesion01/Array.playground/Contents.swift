import UIKit

let numero: Double = 7

//Implícito
var arrayNotas1 = [Int]()
arrayNotas1.append(8)
arrayNotas1.append(10)
arrayNotas1.append(contentsOf: [19, 30, 23])

print(arrayNotas1)

//Explícito
let arrayNotas2: [Int] = [5, 8, 9, 15, 3, 1]


/*
 =======================
 SOLO PARA JUGAR:
 ARRAY MULTIDIMENSIONAL
 =======================
 
 var arrayGrupoNotas = [[[Int]]]()
 arrayGrupoNotas.append([[5, 9, 1, 7], [5, 9, 1, 7], [5, 9, 1, 7], [5, 9, 1, 7]])
 arrayGrupoNotas.append([[35, 19, 1, 27], [35, 19, 1, 27], [35, 19, 1, 27], [35, 19, 1, 27]])

 print(arrayGrupoNotas)
 
 */


//************* ITERAR UN ARRAY O COLECCIÓN DE DATOS ***************
//for (int i = 0; i < array.length; i ++) { //Code Here }
/*
 1. Kenyi
 2. Beatriz
 .
 .
 .
 n. Bryan
 */

let arrayNombres = ["Kenyi", "Beatriz", "Alfredo", "Sergio", "Bryan"]

print("\n********************")
for nombre in arrayNombres {
    print(nombre)
}

print("\n********************")
for indice in 0..<arrayNombres.count {
    print("\(indice + 1). \(arrayNombres[indice])")
}

print("\n********************")
for iterador in arrayNombres.enumerated() {
    print("\(iterador.offset + 1). \(iterador.element)")
}

print("\n********* CON TUPLE ***********")
for (indice, elemento) in arrayNombres.enumerated() {
    print("\(indice + 1). \(elemento)")
}
