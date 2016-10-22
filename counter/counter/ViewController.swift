//
//  ViewController.swift
//  counter
//
//  Created by Signe Henderson on 10/11/16.
//  Copyright © 2016 Signe Henderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //var timer = Timer()
    //var resetTimer = Timer()
    var getTime = Timer()
    
    var counter = CounterClass()

    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //timer = Timer.scheduledTimer(timeInterval: 1, target: counter, selector: #selector(counter.incrementCount), userInfo: nil, repeats: true)
        //resetTimer = Timer.scheduledTimer(timeInterval: 100, target: counter, selector: #selector(counter.resetCount), userInfo: nil, repeats: true)
        
        counter.setIncrement(interval: 1)
        counter.setReset(interval: 100)
        
        getTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.display), userInfo: nil, repeats: true)
            }
    
    func display() {
        let num = counter.getCount()
        print(num)
        counterLabel.text = "\(num)"
        //return num
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
        print("left page")
        getTime.invalidate()
        counter.invalidateTimers()
    }


}

class CounterClass {
    var count = 0
    var intTimer = Timer()
    var resetTimer = Timer()

    @objc func invalidateTimers() {
        intTimer.invalidate()
        resetTimer.invalidate()
    }

    @objc func setIncrement(interval: Double) {
        intTimer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(incrementCount), userInfo: nil, repeats: true)
    }
    
    @objc func setReset(interval: Double) {
        resetTimer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(resetCount), userInfo: nil, repeats: true)
    }
    
    @objc func getCount() -> Int {
        return count
    }
    
    @objc func incrementCount() {
        count = count + 1
        //print("#########\(count)")
    }
    
    @objc func resetCount() {
        count = 0
    }
}

