//
//  TableViewController.swift
//  TipAdvisor
//
//  Created by Nick on 05/08/2018.
//  Copyright © 2018 Yofa. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataStorage.main.countries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = DataStorage.main.countries[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DataStorage.main.saveCountry(DataStorage.main.countries[indexPath.row])
        DataStorage.main.saveCurrency(DataStorage.main.currency[DataStorage.main.getCountry()] ?? "")
        print(DataStorage.main.getCountry())
        tableView.deselectRow(at: indexPath, animated: true)
        dismiss(animated: true, completion: nil)
        
    }
    
}
