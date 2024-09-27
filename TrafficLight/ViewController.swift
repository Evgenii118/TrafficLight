//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ewgeniy Izyurov on 22.09.2024.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowButton: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var counterForPressed = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeBeautifulInterface()
    }

    private func makeBeautifulInterface(){
        startButton.layer.cornerRadius = 10
        
        let views = [redLight, yellowButton, greenLight]
        
        for view in views {
            view?.layer.cornerRadius = (view?.frame.width ?? 0) / 2
        }
    }
    
    @IBAction func buttonDidPressed(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        
        counterForPressed += 1
        
        switch counterForPressed {
        case 0:
            redLight.alpha = 1
            greenLight.alpha = 0.3
        case 1:
            redLight.alpha = 0.3
            yellowButton.alpha = 1
        case 2:
            yellowButton.alpha = 0.3
            greenLight.alpha = 1
            counterForPressed = -1
        default:
            print("Error")
        }
    }
    
}

