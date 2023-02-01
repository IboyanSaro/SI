//
//  ViewController.swift
//  Weekday Finder
//
//  Created by Saro Iboyan on 26.04.2020.
//  Copyright © 2020 Prosi7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var dateTextF: UITextField!
    @IBOutlet weak var mounthTextF: UITextField!
    @IBOutlet weak var yaerTextF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonFindDay(_ sender: UIButton) {
        
        guard let day = dateTextF.text, let mounth = mounthTextF.text, let yaer = yaerTextF.text else {
            return
        }
    
        let calendar = Calendar.current
        var dateComponets = DateComponents()
        dateComponets.day = Int(day)
        dateComponets.month = Int(mounth)
        dateComponets.year = Int(yaer)
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_RU")
        dateFormatter.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponets) else { return }
        
        let weekDay = dateFormatter.string(from: date)
        let capitalizedWeekDay = weekDay.capitalized
        
        resultLabel.text = capitalizedWeekDay
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

