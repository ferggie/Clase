import UIKit

/*
 
 INYECCIÓN DE DEPENDENCIAS
 =========================
 
    * Una instancia de una clase no puede ser creada sin ciertos requerimientos.
    * La instancia de la clase no necesita saber como crear ciertas dependencias.
    * Sólo necesita esa dependencia creada y se encargara de usarla a su antojo.
 
        Ejemplo:
            Si queremos crear un carro
                Timon
                4 llantas
                un motor
                un chasis
 */

class Persona {
    
    //Son de dependencia
    let nombre      : String
    let apellido    : String
    
    //No son de dependencia
    var direccion   : String = ""
    
    //Variable computada es el producto de una operación o proceso y es sólo del tipo getter
    var nombreCompleto: String {
        return "\(self.nombre) \(self.apellido)"
    }
    
    var iniciales: String {
        
        let inicialNombre   = self.nombre.prefix(1).uppercased()
        let inicialApellido = self.apellido.prefix(1).uppercased()
        
        return "\(inicialNombre)\(inicialApellido)"
    }
    
    func iniciales2() -> String {
        let inicialNombre   = self.nombre.prefix(1).uppercased()
        let inicialApellido = self.apellido.prefix(1).uppercased()
        
        return "\(inicialNombre)\(inicialApellido)"
    }
    
    init(nombre: String, apellido: String) {
        self.nombre     = nombre
        self.apellido   = apellido
    }
}

let objPersona1 = Persona(nombre: "Kenyi", apellido: "Rodriguez")
objPersona1.direccion = "Calle los olvidados 666 Ref. El quinto circulo"
objPersona1.nombreCompleto
objPersona1.iniciales
objPersona1.iniciales2()


let objPersona2 = Persona(nombre: "Sergio", apellido: "Ramirez")
objPersona2.nombreCompleto
objPersona2.iniciales

class Alumno: Persona {
    
}

class Profesor: Persona {
    
}

let objAlumno = Alumno(nombre: "Beatriz", apellido: "Lazcano")
objAlumno.iniciales
