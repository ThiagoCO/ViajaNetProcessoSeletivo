//
//  FilteraAiportsView.swift
//  ViajaNetTest
//
//  Created by Thiago Cavalcante de Oliveira on 09/02/19.
//  Copyright © 2019 Thiago Cavalcante de Oliveira. All rights reserved.
//

import Foundation

protocol FilterAiportsViewDelegate {
    func stopLoad()
    func startLoad()
    func reloadTableView()
}

extension FilterAirportsViewController: FilterAiportsViewDelegate {
    func stopLoad() {
        tableView.isHidden = false
        activityIndicator.removeFromSuperview()
    }
    
    func startLoad() {
        tableView.isHidden = true
        self.view.addSubview(activityIndicator)
        activityIndicator.frame = self.view.frame
        activityIndicator.startAnimating()
    }
    
    func reloadTableView() {
        tableView.reloadData()
    }
}
