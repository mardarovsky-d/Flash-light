//
//  ViewController.swift
//  Flash light
//
//  Created by Дмитрий on 23.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = 0
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
        switch isLightOn {
        case 0:
            view.backgroundColor = .black
        case 1:
            view.backgroundColor = .red
        case 2:
            view.backgroundColor = .yellow
        case 3:
            view.backgroundColor = .green
        default:
            view.backgroundColor = .black
        }
    }
    
    @IBAction func buttonPressed() {
        if isLightOn < 3 {
            isLightOn += 1
            } else {
                isLightOn = 0
            }
        updateUI()
    }
    
}

