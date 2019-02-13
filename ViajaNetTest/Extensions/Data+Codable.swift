//
//  Data+Codable.swift
//  ViajaNetTest
//
//  Created by Thiago Cavalcante de Oliveira on 12/02/19.
//  Copyright © 2019 Thiago Cavalcante de Oliveira. All rights reserved.
//

import Foundation

extension Data {
    
    func parse<T: Codable>(as model: T.Type) -> T? {
        return try? JSONDecoder().decode(model, from: self)
    }
    
}
