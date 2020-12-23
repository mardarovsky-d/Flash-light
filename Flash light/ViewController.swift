//
//  ViewController.swift
//  Flash light
//
//  Created by Дмитрий on 23.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = false

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    @IBAction func buttonPressed() {
        isLightOn.toggle()
        updateUI()
    }
    
}

