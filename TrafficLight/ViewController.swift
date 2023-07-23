//
//  ViewController.swift
//  TrafficLight
//
//  Created by Aleksey Vinogradov on 23.07.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redTrafficLightView: UIView!
    @IBOutlet var yellowTrafficLightView: UIView!
    @IBOutlet var greenTrafficLightView: UIView!
    @IBOutlet var switchTrafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    @IBAction func switchTrafficLightButtonDidTupped() {
        switchTrafficLightButton.setTitle("NEXT", for: .normal)
        
        if redTrafficLightView.alpha == 1 {
            redTrafficLightView.alpha = 0.3
            yellowTrafficLightView.alpha = 1
        } else if yellowTrafficLightView.alpha == 1 {
            yellowTrafficLightView.alpha = 0.3
            greenTrafficLightView.alpha = 1
        } else if greenTrafficLightView.alpha == 1 {
            greenTrafficLightView.alpha = 0.3
            redTrafficLightView.alpha = 1
        } else {
            redTrafficLightView.alpha = 1
        }
    }
    
    private func setupUI() {
        redTrafficLightView.layer.cornerRadius = 62.5
        yellowTrafficLightView.layer.cornerRadius = 62.5
        greenTrafficLightView.layer.cornerRadius = 62.5
        switchTrafficLightButton.layer.cornerRadius = 10
    }
    
}

