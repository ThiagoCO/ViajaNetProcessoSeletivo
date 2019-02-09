//
//  SearchAirportsViewController.swift
//  ViajaNetTest
//
//  Created by Thiago Cavalcante de Oliveira on 04/02/19.
//  Copyright © 2019 Thiago Cavalcante de Oliveira. All rights reserved.
//

import UIKit

class SearchAirportsViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var buttonCityOriginLayer: UIButton!
    
    @IBOutlet weak var buttonCityDestinyLayer: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepButtonLayer()
    }
    
    //MARK : - Actions
    

    
    //MARK : - Functions
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if (segue.identifier == "Origem" || segue.identifier == "Destino") {
            
            let controller = segue.destination as! FilterAirportsViewController
            controller.titleView = segue.identifier ?? ""
        }
   
    }
    
    func stepButtonLayer() {
        buttonCityOriginLayer.layer.cornerRadius = 5
        buttonCityOriginLayer.layer.masksToBounds = true
        buttonCityDestinyLayer.layer.cornerRadius = 5
        buttonCityOriginLayer.layer.masksToBounds = true
    }
    
}
