//
//  SearchAiportsViewController+SearchAiportsViewDelegate.swift
//  ViajaNetTest
//
//  Created by Thiago Cavalcante de Oliveira on 06/02/19.
//  Copyright © 2019 Thiago Cavalcante de Oliveira. All rights reserved.
//

import UIKit

protocol SearchAiportsViewDelegate {
    func setTextDestination(destination:String)
    func setTextOrigin(origin:String)
}


extension SearchAirportsViewController : SearchAiportsViewDelegate {
   
    func setTextDestination(destination: String) {
        buttonCityDestinationLayer.setTitle(destination, for: .normal)
    }
    
    func setTextOrigin(origin: String) {
        buttonCityOriginLayer.setTitle(origin, for: .normal)
    }
}
