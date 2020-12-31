//
//  ViewController.swift
//  Flash light
//
//  Created by Дмитрий on 23.12.2020.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var screenColor = 0
    var torchIsOn = false
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func toggleTorch() {
        guard let device = AVCaptureDevice.default(for: .video) else { return }

        if device.hasTorch {
            do {
                try device.lockForConfiguration()

                if torchIsOn == true {
                    device.torchMode = .on
                } else {
                    device.torchMode = .off
                }

                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }

    fileprivate func updateUI() {
        switch screenColor {
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
        if  screenColor < 3 {
            screenColor += 1
            } else {
                screenColor = 0
            }
        torchIsOn.toggle()
        updateUI()
        toggleTorch()
    }
    
}

