//
//  DetallesRestaurantController.swift
//  Modelos
//
//  Created by Alumno on 10/6/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesRestaurantController : UIViewController {
    
    var restaurante : Restaurante = Restaurante(nombre:"", direccion:"", horario:"", foto:"", fondoTop:"")
    
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblHorario: UILabel!
    @IBOutlet weak var imgFondoTop: UIImageView!
    
    override func viewDidLoad() {
        self.title = restaurante.nombre
        self.title = restaurante.foto
        
        lblDireccion.text = restaurante.direccion
        lblHorario.text = restaurante.horario
        imgFondoTop.image = restaurante.fondoTop
        
        

        
    }
}
