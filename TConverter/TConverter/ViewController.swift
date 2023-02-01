//
//  ViewController.swift
//  TConverter
//
//  Created by Saro Iboyan on 27.04.2020.
//  Copyright © 2020 Prosi7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var sliderLabel: UISlider! {
        didSet {
            sliderLabel.maximumValue = 100
            sliderLabel.minimumValue = 0
            sliderLabel.value = 0
        }
    }
    
    @IBAction func sliderButton(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
        
    }
}

