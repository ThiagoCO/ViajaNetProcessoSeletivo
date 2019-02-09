//
//  FilterAirportsViewController.swift
//  ViajaNetTest
//
//  Created by Thiago Cavalcante de Oliveira on 05/02/19.
//  Copyright © 2019 Thiago Cavalcante de Oliveira. All rights reserved.
//

import UIKit

class FilterAirportsViewController: UIViewController {

    //Variables
    var searchAiportsViewDelete: SearchAiportsViewDelegate?
    var titleView = ""
    var viewModel: FilterAiportsViewModel?
    //outlets
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var searchAirports: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = titleView
        self.viewModel = FilterAiportsViewModel()
        self.steptableView()
    }
    
    func steptableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}
