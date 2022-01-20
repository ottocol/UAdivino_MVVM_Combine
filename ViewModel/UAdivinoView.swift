//
//  UAdivinoView.swift
//  UAdivino_MVVM
//
//  Created by Otto Colomina Pardo on 19/1/22.
//
import UIKit
import Combine

class UAdivinoView: UIViewController {
    
    let viewModel = UAdivinoViewModel()
    private var suscripciones = Set<AnyCancellable>()
    
    @IBOutlet weak var respuestaLabel: UILabel!
    
    
    @IBAction func botonPulsado(_ sender: Any) {
        viewModel.solicitarRespuesta()
    }
    
    override func viewDidLoad() {
        self.bindViewModel()
    }
    
    func bindViewModel() {
        suscripciones = [
            viewModel.$textoResp.assign(to: \.text!, on: respuestaLabel),
            viewModel.$colorResp.map {
                color in
                color == ColorRespuesta.verde ? UIColor.green : UIColor.red
            }.assign(to: \.textColor!, on: respuestaLabel)
        ]
    }
}
