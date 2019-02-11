//
//  FilterAiportsViewController+SearchBarDelegate.swift
//  ViajaNetTest
//
//  Created by Thiago Cavalcante de Oliveira on 09/02/19.
//  Copyright © 2019 Thiago Cavalcante de Oliveira. All rights reserved.
//

import UIKit

extension FilterAirportsViewController: UISearchBarDelegate {
    
    func setupSearchBar(){
        searchAirports.delegate = self
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        viewModel?.getFilterAiports(textFilter: searchBar.text ?? "")
    }
}
