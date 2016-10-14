//
//  ViewController.swift
//  counter
//
//  Created by Signe Henderson on 10/11/16.
//  Copyright © 2016 Signe Henderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let counter = Counter()
                
        while counter.getCount() < 101 {
            counter.incrementCount()
            print("#########\(counter.getCount())")
            if counter.getCount() == 100 {
                counter.resetCount()
            }
        }
        

        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Counter {
    var count = 0
    func getCount() -> Int {
        return count
    }
    
    func incrementCount() {
        count = count + 1
    }
    
    func resetCount() {
        count = 0
    }
}

