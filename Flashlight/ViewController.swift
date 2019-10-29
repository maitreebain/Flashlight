//
//  ViewController.swift
//  Flashlight
//
//  Created by Maitree Bain on 10/29/19.
//  Copyright © 2019 Maitree Bain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func toggleSwitch(_ sender: UISwitch) {
        
    
    let newColor: (color: UIColor?, name: String)
        
        switch sender.tag {
        case 0:
            newColor = (.black, "black")
            displayLabel.textColor = .white
            displayLabel.text = ("Light's out!")
            sender.tag += 1
        case 1:
            newColor = (.white, "white")
        default:
            newColor = (.white, "white")
        }
        view.backgroundColor = newColor.color
}

}
