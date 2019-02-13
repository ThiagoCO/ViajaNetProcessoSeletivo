//
//  APIManager.swift
//  ViajaNetTest
//
//  Created by Thiago Cavalcante de Oliveira on 04/02/19.
//  Copyright © 2019 Thiago Cavalcante de Oliveira. All rights reserved.
//

import Foundation
import Alamofire

class APIManager {
    
    // MARK: - Variables
    static let shared = APIManager()
    
    func getAirports(text:String, completed:@escaping(AirportList?) -> Void) {
        
        let url = "https://www.viajanet.com.br/resources/api/Autocomplete/\(text)"
        Alamofire.request(url, method: .get).responseData { (resp) in
            if let data = resp.data {
                let airportsList = data.parse(as: AirportList.self)
                completed(airportsList)
            }
        }
    }
}
