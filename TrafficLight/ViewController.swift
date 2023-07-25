//
//  ViewController.swift
//  TrafficLight
//
//  Created by Aleksey Vinogradov on 23.07.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var redLight: UIView!
    @IBOutlet private var yellowLight: UIView!
    @IBOutlet private var greenLight: UIView!
    
    @IBOutlet private var switchTrafficLightButton: UIButton!
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    private var currentLight: CurrentLight = .red
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchTrafficLightButton.layer.cornerRadius = 10
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
    }

    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction private func switchTrafficLightButtonDidTupped() {
        
        if switchTrafficLightButton.currentTitle == "START" {
            switchTrafficLightButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowLight.alpha = lightIsOn
            redLight.alpha = lightIsOff
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
        }
    }
}

// MARK: - CurrentLight
extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}
