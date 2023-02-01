//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Saro Iboyan on 01.05.2020.
//  Copyright © 2020 Prosi7. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else { return }
        label.text = "Hello, \(login)"
    }
    
    @IBAction func goBackTapped(_ sender: UIButton) {
    }
}
