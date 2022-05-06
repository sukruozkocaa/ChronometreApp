//
//  ViewController.swift
//  chronometreApp
//
//  Created by Şükrü Özkoca on 6.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 0
    

    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startClicked(_ sender: Any) {
      
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerApp), userInfo: nil, repeats: true)
        timerLabel.text = String(time)
    }
    @IBAction func stopClicked(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetClicked(_ sender: Any) {
        time = 0
        timerLabel.text = String(time)
        timer.invalidate()
    }
    
    @objc func timerApp() {
        timerLabel.text = String(time)
        time += 1
    }
}

