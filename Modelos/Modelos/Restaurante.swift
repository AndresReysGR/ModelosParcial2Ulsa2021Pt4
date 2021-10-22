//
//  Restaurante.swift
//  Modelos
//
//  Created by Alumno on 10/4/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Restaurante{
    var nombre = ""
    var direccion = ""
    var horario = ""
    var foto = ""
    var fondoTop = ""
    
    init(nombre: String, direccion: String, horario: String, foto: String, fondoTop: String) {
        self.nombre = nombre
        self.direccion = direccion
        self.horario = horario
        self.foto = foto
        self.fondoTop = fondoTop

    }
}
