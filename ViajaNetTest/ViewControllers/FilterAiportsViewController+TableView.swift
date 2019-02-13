//
//  FilterAiportsViewController + TableView.swift
//  ViajaNetTest
//
//  Created by Thiago Cavalcante de Oliveira on 06/02/19.
//  Copyright © 2019 Thiago Cavalcante de Oliveira. All rights reserved.
//

import UIKit

extension FilterAirportsViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func setupTableview() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ((viewModel?.aiportsList?.count ?? 0) + 1)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
      //  cell.accessoryType = .disclosureIndicator
        cell.selectionStyle = .none
        cell.backgroundColor = tableView.backgroundColor
        if(indexPath.row == 0) {
            cell.textLabel?.text = "        Lista de aeroportos encontrados:"
        }
        else {
            self.tableView.rowHeight = 80
            cell.textLabel?.text = viewModel?.aiportsList?[indexPath.row - 1].name
            cell.textLabel?.numberOfLines = 2
            cell.textLabel?.textColor = UIColor(displayP3Red: 0, green: 0, blue: 1, alpha: 1)
        
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(titleLabel.text == "Destino") {
            searchAiportsViewDelegate?.setTextDestination(destination: viewModel?.aiportsList?[indexPath.row - 1].name ?? "Erro ao processar aeroporto")
        }
        else {
            searchAiportsViewDelegate?.setTextOrigin(origin: viewModel?.aiportsList?[indexPath.row-1].name ?? "Erro ao processar aeroporto")
        }
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
}

