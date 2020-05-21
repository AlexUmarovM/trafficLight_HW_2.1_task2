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
              var glowingLight: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.2
        yellowLightView.alpha = 0.2
        greenLightView.alpha = 0.2
        
        redLightView.layer.cornerRadius = redLightView.frame.width/2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width/2
        greenLightView.layer.cornerRadius = greenLightView.frame.width/2
        startButton.layer.cornerRadius = 10
        
    }
  
    @IBAction func changeLight() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch  glowingLight {
            
        case nil:
            greenLightView.alpha = 0.2
            redLightView.alpha = 1
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

