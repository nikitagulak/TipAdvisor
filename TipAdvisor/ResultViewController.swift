//
//  ResultViewController.swift
//  TipAdvisor
//
//  Created by Nick on 29/10/2018.
//  Copyright © 2018 Yofa. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipsLabel?.text = "0"
    }
    
    static var main = ResultViewController()

    @IBOutlet weak var tipsLabel: UILabel!
    
    @IBAction func backButton() {
        dismiss(animated: true, completion: nil)
    }
    
    
}
