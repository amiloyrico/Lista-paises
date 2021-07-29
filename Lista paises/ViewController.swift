//
//  ViewController.swift
//  Lista paises
//
//  Created by Johann Lopez Vargas on 28/07/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Variables
    @IBOutlet weak var tableview: UITableView!
    
    let paises = ["Colombia", "Perú", "Brasil", "Ecuador", "Bolivia", "Estados Unidos", "Alemania"] // Array String
    
    // MARK: - Metodos Ciclo de Vida
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
        
    }

    // MARK: - Funciones delegados
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = paises[indexPath.row]
        
        return cell
        
    }
    
    // MARK: - Funciones
    

    

}

