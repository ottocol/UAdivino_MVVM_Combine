//
//  UAdivinoModel.swift
//  UAdivino_MVVM
//
//  Created by Otto Colomina Pardo on 19/1/22.
//


struct Respuesta {
    var texto: String
    var ok: Bool
}

class UAdivinoModel  {
    let nombre : String
    let respuestas = [
        Respuesta(texto: "Si", ok: true),
        Respuesta(texto: "No", ok: false),
        Respuesta(texto: "Ni de coña", ok: false),
        Respuesta(texto: "¡Claro que sí!", ok: true)
    ]
    
    func obtenerRespuesta() -> Respuesta {
        let indice = Int.random(in: 0..<respuestas.count)
        return respuestas[indice];
    }
    
    init(nombre: String) {
        self.nombre = nombre;
    }
}
