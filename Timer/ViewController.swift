//
//  ViewController.swift
//  Timer
//
//  Created by Mohamed Salah Zidane on 3/14/18.
//  Copyright © 2018 Mohamed Salah Zidane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var num = 210
    @IBAction func btnPause(_ sender: Any) {
        num = Int (lblTimer.text!)!
        timer.invalidate()
    }
    @IBAction func btnMinus10(_ sender: Any) {
        if num > 10 {
        num = num - 10
        lblTimer.text = (String)(num)
        }
    }
    @IBOutlet weak var lblTimer: UILabel!
    @IBAction func btnReset(_ sender: Any) {
        num = 210
        lblTimer.text = (String)(num)
    }
    @IBAction func btnPlus10(_ sender: Any) {
        num = num + 10
        lblTimer.text = (String)(num)
    }
    @IBAction func btnPlay(_ sender: Any) {
        
        timer=Timer.scheduledTimer(timeInterval:1, target:self, selector: #selector((ViewController.processTimer)), userInfo:nil, repeats:true)
    }
    
    
    @objc func processTimer(){
        if num > 0 {
        num = num - 1
       lblTimer.text = (String)(num)
        }else{
            timer.invalidate()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblTimer.text = "210"
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

