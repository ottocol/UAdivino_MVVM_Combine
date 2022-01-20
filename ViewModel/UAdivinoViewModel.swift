//
//  UAdivinoViewModel.swift
//  UAdivino_MVVM
//
//  Created by Otto Colomina Pardo on 19/1/22.
//

import Combine

enum ColorRespuesta {
    case verde
    case rojo
}

class UAdivinoViewModel {
    let model = UAdivinoModel(nombre: "Rappel")
    @Published var textoResp = ""
    @Published var colorResp = ColorRespuesta.verde
    
    func solicitarRespuesta() {
        let resp = model.obtenerRespuesta()
        textoResp = resp.texto
        colorResp = resp.ok ? .verde : .rojo
    }
}
