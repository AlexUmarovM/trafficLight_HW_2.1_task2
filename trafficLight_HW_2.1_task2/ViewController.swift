//
//  ViewController.swift
//  trafficLight_HW_2.1_task2
//
//  Created by Александр Умаров on 19.05.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.2
        yellowLightView.alpha = 0.2
        greenLightView.alpha = 0.2
        
        redLightView.layer.cornerRadius = 65
        yellowLightView.layer.cornerRadius = 65
        greenLightView.layer.cornerRadius = 65
        
    }
    var glowingLight: UIView!
    @IBAction func changeLight() {
        switch  glowingLight {
        case nil:
            greenLightView.alpha = 0.2
            startButton.setTitle("START", for: .normal)
            glowingLight = redLightView
            
        case redLightView:
            redLightView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
            glowingLight = yellowLightView
        
        case yellowLightView:
            redLightView.alpha = 0.2
            yellowLightView.alpha = 1
            glowingLight = greenLightView
        
        case greenLightView:
            yellowLightView.alpha = 0.2
            greenLightView.alpha = 1
            glowingLight = nil
        
        default:
            break
          
        }
        
    }
    

}

