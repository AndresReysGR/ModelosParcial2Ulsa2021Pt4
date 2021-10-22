//
//  ViewController.swift
//  Modelos
//
//  Created by Alumno on 10/4/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ListaRestaurantesController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tvRestaurantes: UITableView!
    var restaurantes : [Restaurante] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 176
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda =  tableView.dequeueReusableCell(withIdentifier: "celdaRestaurante") as! CeldaRestaurantController
        celda.lblNombre.text = restaurantes[indexPath.row].nombre
        celda.imgFoto.image = UIImage(named: restaurantes[indexPath.row].foto)
        
        return celda
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesRestaurantController
        destino.restaurante = restaurantes[tvRestaurantes.indexPathForSelectedRow!.row]
    }
   

    override func viewDidLoad() {
        self.title = "Runaterra"
        
        super.viewDidLoad()
        restaurantes.append(Restaurante(nombre: "Piltover y Zaun" , direccion: "Calle Dos #123", horario: "De 12pm a 10pm", foto: "Demacia", fondoTop: ""))
        restaurantes.append(Restaurante(nombre: "Jonia" , direccion: "Calle tres #456", horario: "De 10am a 4pm", foto: "Jonia", fondoTop: ""))
        restaurantes.append(Restaurante(nombre: "Demacia" , direccion: "Calle cuatro #456", horario: "De 12pm a 3pm",  foto: "Piltover_y_Zaun", fondoTop: ""))
        // Do any additional setup after loading the view.
    }


}

