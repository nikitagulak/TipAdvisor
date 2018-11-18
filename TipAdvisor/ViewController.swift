//
//  ViewController.swift
//  TipAdvisor
//
//  Created by Nick on 24/07/2018.
//  Copyright © 2018 Yofa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    static var mainObject = ViewController()
    
    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var countButtonView: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    
    
    @IBAction func countTips() {
        if bill.text!.isEmpty {
            emptyFieldAlert()
        } else {
            let resultVC = storyboard!.instantiateViewController(withIdentifier: "resultVC") as! ResultViewController
            present(resultVC, animated: true, completion: nil)
            resultVC.tipsLabel.text = countingTips()
        }
    }
    
    func countingTips() -> String {
        let stringBill: Double = Double(Int(bill.text!) ?? 1)
        let percentage = DataStorage.main.tips[DataStorage.main.getCountry()] ?? 10
        let result: Double = (stringBill*percentage)/100.0
        return "\(Int(round(result)))"
    }
    
    func changeCountryLabel(label: String) {
        print("This is passed label \(label)")
        countryLabel?.text = label
    }
    
    func emptyFieldAlert() {
        let alert = UIAlertController(title: "Text field is empty", message: "Enter your bill amount to count tips you should leave", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            print("OK")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryLabel?.text = DataStorage.main.getCountry()
        currencyLabel?.text = DataStorage.main.getCurrency()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        countryLabel?.text = DataStorage.main.getCountry()
        currencyLabel?.text = DataStorage.main.getCurrency()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }

}

