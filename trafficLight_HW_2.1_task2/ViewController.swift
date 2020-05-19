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
    }
   
    @IBAction func changeLight() {
    }
    

}

