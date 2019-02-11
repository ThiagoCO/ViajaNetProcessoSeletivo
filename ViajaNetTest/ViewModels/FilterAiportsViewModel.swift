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
    var view: FilterAiportsViewDelegate
    
    init(view:FilterAiportsViewDelegate) {
        self.view = view
    }
    
    func getFilterAiports(textFilter:String) {
        view.startLoad()
        let text = textFilter.replacingOccurrences(of: " ", with: "%20", options: .literal, range: nil)
        APIManager.shared.getAirports(text: text) { (aiportList) in
            if let  aiports = aiportList?.aiports {
                self.aiportsList = aiports
                self.view.stopLoad()
                self.view.reloadTableView()
            }
            else {
                self.aiportsList?.append(Airport(id: 2, name: "Nenhum Aeroporto encontrado", city: ""))
                self.view.stopLoad()
                self.view.reloadTableView()
            }
        }
    }
}
