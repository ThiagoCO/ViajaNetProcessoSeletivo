//
//  FilterAiportsViewModel.swift
//  ViajaNetTest
//
//  Created by Thiago Cavalcante de Oliveira on 07/02/19.
//  Copyright © 2019 Thiago Cavalcante de Oliveira. All rights reserved.
//

import Foundation


class FilterAiportsViewModel {
    
    var aiportsList: [Airport]?
    
    func getFilterAiports(textFilter:String) {
        APIManager.shared.getAirports(text: textFilter) { (aiportList) in
            if let  aiports = aiportList?.aiports {
                self.aiportsList = aiports
            }
        }
    }
}
