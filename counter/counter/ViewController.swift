//
//  ViewController.swift
//  counter
//
//  Created by Signe Henderson on 10/11/16.
//  Copyright © 2016 Signe Henderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var resetTimer = Timer()
    var getTime = Timer()
    
    let counter = CounterClass()

    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: counter, selector: #selector(counter.incrementCount), userInfo: nil, repeats: true)
        
        resetTimer = Timer.scheduledTimer(timeInterval: 100, target: counter, selector: #selector(counter.resetCount), userInfo: nil, repeats: true)
        
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


}

class CounterClass {
    var count = 0
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

