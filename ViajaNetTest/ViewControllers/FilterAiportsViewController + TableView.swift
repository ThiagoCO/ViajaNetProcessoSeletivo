//
//  FilterAiportsViewController + TableView.swift
//  ViajaNetTest
//
//  Created by Thiago Cavalcante de Oliveira on 06/02/19.
//  Copyright © 2019 Thiago Cavalcante de Oliveira. All rights reserved.
//

import UIKit

extension FilterAirportsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (viewModel?.aiportsList?.count ?? 1000)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
      //  cell.accessoryType = .disclosureIndicator
        cell.selectionStyle = .none
        cell.backgroundColor = tableView.backgroundColor
         self.tableView.rowHeight = 80
        cell.textLabel?.text = viewModel?.aiportsList?[indexPath.row].name
        
        
        return cell
    }
    
    
    
}

