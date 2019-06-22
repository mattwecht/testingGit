//
//  ViewController.swift
//  timerTest
//
//  Created by Matthew Wecht on 6/22/19.
//  Copyright © 2019 Matthew Wecht. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerView.text = String(counter)
        // Do any additional setup after loading the view.
    }
    
    var testTimer = Timer()
    var counter = 5
    
    @IBAction func startButtonTapped(_ sender: Any) {
        testTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fire), userInfo: nil, repeats: true)
    }
    
    @objc func fire()
    {
        counter -= 1
        timerView.text = String(counter)
        if counter == 0 {
            testTimer.invalidate()
        }
    }

}

