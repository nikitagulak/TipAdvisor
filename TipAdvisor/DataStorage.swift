//
//  DataStorage.swift
//  TipAdvisor
//
//  Created by Nick on 01/11/2018.
//  Copyright © 2018 Yofa. All rights reserved.
//

import Foundation



class DataStorage {
    
    static var main = DataStorage()
    
    let countries = ["Argentina (10%)", "Armenia (8%)", "Australia (0%)", "Austria (8%)", "Azerbaijan (10%)", "Bangladesh (0%)", "Belarus (5%)", "Belgium (10%)", "Bosnia and Herzegovina (10%)", "Brazil (5%)", "Bulgaria (0%)", "Cambodia (10%)", "Canada (15%)", "Chile (10%)", "China (0%)", "Colombia (13%)", "Croatia (3%)", "Cuba (8%)", "Cyprus (13%)", "Czech Republic (13%)", "Denmark (0%)", "Ecuador (10%)", "Egypt (10%)", "Estonia (10%)", "Finland (10%)", "France (8%)", "Georgia (10%)", "Germany (8%)", "Greece (8%)", "Hungary (13%)", "Iceland (10%)", "India (10%)", "Indonesia (5%)", "Ireland (13%)", "Israel (10%)", "Italy (10%)", "Japan (0%)", "Kazakhstan (10%)", "Kyrgyzstan (10%)", "Latvia (8%)", "Lithuania (8%)", "Luxembourg (0%)", "Malaysia (5%)", "Malta (8%)", "Mexico (13%)", "Monaco (15%)", "Morocco (5%)", "Netherlands (0%)", "New Zealand (0%)", "Norway (10%)", "Philippines (13%)", "Poland (13%)", "Portugal (3%)", "Qatar (10%)", "Romania (13%)", "Russia (13%)", "Saudi Arabia (10%)", "Serbia (10%)", "Singapore (0%)", "Slovakia (13%)", "Slovenia (13%)", "South Africa (13%)", "South Korea (0%)", "Spain (9%)", "Sweden (0%)", "Switzerland (8%)", "Thailand (0%)", "Turkey (10%)", "Ukraine (10%)", "UAE (10%)", "UK (13%)", "USA (20%)", "Uruguay (8%)", "Vietnam (3%)", "Zimbabwe (10%)"]
    
    let tips: [String: Double] = ["Argentina": 10, "Armenia": 8, "Australia": 0, "Austria": 8, "Azerbaijan": 10, "Bangladesh": 0, "Belarus": 5, "Belgium": 10, "Bosnia and Herzegovina": 10, "Brazil": 5, "Bulgaria": 0, "Cambodia": 10, "Canada": 15, "Chile": 10, "China": 0, "Colombia": 13, "Croatia": 3, "Cuba": 8, "Cyprus": 13, "Czech Republic": 13, "Denmark": 0, "Ecuador": 10, "Egypt": 10, "Estonia": 10, "Finland": 10, "France": 8, "Georgia": 10, "Germany": 8, "Greece": 8, "Hungary": 13, "Iceland": 10, "India": 10, "Indonesia": 5, "Ireland": 13, "Israel": 10, "Italy": 10, "Japan": 0, "Kazakhstan": 10, "Kyrgyzstan": 10, "Latvia": 8, "Lithuania": 8, "Luxembourg": 0, "Malaysia": 5, "Malta": 8, "Mexico": 13, "Monaco": 15, "Morocco": 5, "Netherlands": 0, "New Zealand": 0, "Norway": 10, "Philippines": 13, "Poland": 13, "Portugal": 3, "Qatar": 10, "Romania": 13, "Russia": 13, "Saudi Arabia": 10, "Serbia": 10, "Singapore": 0, "Slovakia": 13, "Slovenia": 13, "South Africa": 13, "South Korea": 0, "Spain": 9, "Sweden": 0, "Switzerland": 8, "Thailand": 0, "Turkey": 10, "Ukraine": 10, "UAE": 10, "UK": 13, "USA": 20, "Uruguay": 8, "Vietnam": 3, "Zimbabwe": 10]
    
    let currency = ["Argentina": "ARS", "Armenia": "AMD", "Australia": "AUD", "Austria": "EUR", "Azerbaijan": "AZN", "Bangladesh": "BDT", "Belarus": "BYN", "Belgium": "EUR", "Bosnia and Herzegovina": "BAM", "Brazil": "BRL", "Bulgaria": "BGN", "Cambodia": "KHR", "Canada": "CAD", "Chile": "CLP", "China": "CNY", "Colombia": "COP", "Croatia": "HRK", "Cuba": "CUP", "Cyprus": "EUR", "Czech Republic": "CZK", "Denmark": "DKK", "Ecuador": "USD", "Egypt": "EGP", "Estonia": "EUR", "Finland": "EUR", "France": "EUR", "Georgia": "GEL", "Germany": "EUR", "Greece": "EUR", "Hungary": "HUF", "Iceland": "ISK", "India": "INR", "Indonesia": "IDR", "Ireland": "EUR", "Israel": "ILS", "Italy": "EUR", "Japan": "JPY", "Kazakhstan": "KZT", "Kyrgyzstan": "KGS", "Latvia": "EUR", "Lithuania": "EUR", "Luxembourg": "EUR", "Malaysia": "MYR", "Malta": "EUR", "Mexico": "MXN", "Monaco": "EUR", "Morocco": "MAD", "Netherlands": "EUR", "New Zealand": "NZD", "Norway": "NOK", "Philippines": "PHP", "Poland": "PLN", "Portugal": "EUR", "Qatar": "QAR", "Romania": "RON", "Russia": "RUB", "Saudi Arabia": "SAR", "Serbia": "RSD", "Singapore": "SGD", "Slovakia": "EUR", "Slovenia": "EUR", "South Africa": "ZAR", "South Korea": "KRW", "Spain": "EUR", "Sweden": "SEK", "Switzerland": "CHF", "Thailand": "THB", "Turkey": "TRY", "Ukraine": "UAH", "UAE": "AED", "UK": "GBP", "USA": "USD", "Uruguay": "UYU", "Vietnam": "VND", "Zimbabwe": "USD"]
    
    func getCountry() -> String {
        return UserDefaults.standard.string(forKey: "myData") ?? "United States"
    }
    
    func saveCountry(_ data: String) {
        UserDefaults.standard.set(data, forKey: "myData")
    }
    
    func getCurrency() -> String {
        return UserDefaults.standard.string(forKey: "myCurrency") ?? "USD"
    }
    
    func saveCurrency(_ data: String) {
        UserDefaults.standard.set(data, forKey: "myCurrency")
    }
}
