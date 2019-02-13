//
//  Airport.swift
//  ViajaNetTest
//
//  Created by Thiago Cavalcante de Oliveira on 04/02/19.
//  Copyright © 2019 Thiago Cavalcante de Oliveira. All rights reserved.
//

import Foundation


struct AirportList: Codable {
    
    enum CodingKeys: String, CodingKey {
        case aiports = "Locations"
    }
    
    var aiports: [Airport]
    
}

struct Airport: Codable {
    
    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case name = "Name"
        case city = "IataDescription"
    }
    var id: Int
    var name: String
    var city: String
    
    init(id:Int, name:String, city:String) {
        self.id = id
        self.name = name
        self.city = city
    }
}


