//
//  SearchAirportsViewController.swift
//  ViajaNetTest
//
//  Created by Thiago Cavalcante de Oliveira on 04/02/19.
//  Copyright © 2019 Thiago Cavalcante de Oliveira. All rights reserved.
//

import UIKit

class SearchAirportsViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var buttonCityOriginLayer: UIButton!
    
    @IBOutlet weak var TextFieldDateRounds: UITextField!
    @IBOutlet weak var buttonCityDestinyLayer: UIButton!
    
    
    @IBOutlet weak var TextFieldDateTrip: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonLayer()
        setupTextFieldDate()
    }

    func setupTextFieldDate() {
        self.TextFieldDateTrip.tag = 1
        self.TextFieldDateRounds.tag = 2
    }
    
    //MARK : - Functions
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if (segue.identifier == "Origem" || segue.identifier == "Destino") {
            
            let controller = segue.destination as! FilterAirportsViewController
            controller.titleView = segue.identifier ?? ""
            controller.searchAiportsViewDelegate = self
        }
   
    }
    
    func setupButtonLayer() {
        buttonCityOriginLayer.layer.cornerRadius = 5
        buttonCityOriginLayer.layer.masksToBounds = true
        buttonCityDestinyLayer.layer.cornerRadius = 5
        buttonCityOriginLayer.layer.masksToBounds = true
    }
   
    @IBAction func TextFieldDatePickerView(_ sender: UITextField) {
        let datePickerView = UIDatePicker()
        datePickerView.datePickerMode = .date
        datePickerView.tag = sender.tag
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(handleDatePicker(sender:)), for: .valueChanged)
    }
    
    
    @objc func handleDatePicker(sender: UIDatePicker) {
        let dateFormatter = DateFormatter() 
        dateFormatter.dateFormat = "dd MM yyyy"
        let dateText = dateFormatter.string(from: sender.date).replacingOccurrences(of: " ", with: "/", options: .literal, range: nil)
        if(sender.tag == 1){
             self.TextFieldDateTrip.text = dateText
        }
        else {
            self.TextFieldDateRounds.text = dateText
        }
    }
    @IBAction func buttonSearchPassages(_ sender: Any) {
        let alert = UIAlertController(title: "Aviso", message: "Botão meramente ilustrativa", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
}
